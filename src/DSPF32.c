#include "DSPF32.h"

#include <stdlib.h>
#include <math.h>

/**
 * \brief Common Data buffer
 */
typedef struct
{
	float Mean;

	uint16_t SignChanges;

	float Min;

	float Max;

	float Moments[3];

	const float* Data;

	size_t Size;

	const uint8_t* BitMask;

	uint32_t BitShift;

} TDataBufferF32;

static TDataBufferF32 DataBufferF32;

/**
 * \brief Determines whether a feature is used or not
 * \param pos Position of the ferature in library see ExtractedFeatures enum
 * \return
 */
static inline uint8_t is_feature_used(uint32_t pos)
{
	return (DataBufferF32.BitMask[pos / 8] & (1u << (pos % 8)));
}

void InitDataBufferF32(const uint8_t* p_BitMask, uint32_t p_BitShift, const float* p_Data, size_t p_Size)
{
	DataBufferF32.Data = p_Data;
	DataBufferF32.Size = p_Size;
	DataBufferF32.BitMask = p_BitMask;
	DataBufferF32.BitShift = p_BitShift;

	for (int i = 0; i < 3; i++)
	{
		DataBufferF32.Moments[i] = 0;
	}

	const size_t dataSize = p_Size;
	uint8_t CalcBitMask = 0;
	int moment = 0;

	if(!p_BitMask)
		CalcBitMask=255;
	else
	{
		CalcBitMask = 0;

		for (uint8_t feId = 0; feId < EF_COUNT; feId++)
		{
			if(is_feature_used(p_BitShift+feId))
			{
				CalcBitMask = CalcBitMask | featuresCalculationRequestedMask[feId];
			}
		}
	}

	if(BITMASK_MEAN&CalcBitMask)
	{
		float sum = 0;
		for (size_t i = 0; i < dataSize; ++i)
		{
			sum += DataBufferF32.Data[i];
		}
		const float mean = sum / dataSize;

		DataBufferF32.Mean = mean;
	}

	if(BITMASK_MOMENT_4&CalcBitMask)
	{
		moment = 3;
	} else if(BITMASK_MOMENT_3&CalcBitMask)
	{
		moment = 2;
	}else if(BITMASK_MOMENT_2&CalcBitMask)
	{
		moment = 1;
	}

	if(moment>0)
	{
		for (size_t i = 0; i < dataSize; ++i)
		{
			const float zeroMomentValue = (DataBufferF32.Data[i] - DataBufferF32.Mean);

			float momentValue = zeroMomentValue;

			for (int momentIdx = 0; momentIdx < moment; momentIdx++)
			{
				momentValue = momentValue * zeroMomentValue;

				DataBufferF32.Moments[momentIdx] += momentValue;
			}
		}

		for (int momentIdx = 0; momentIdx < moment; momentIdx++)
		{
			DataBufferF32.Moments[momentIdx] = DataBufferF32.Moments[momentIdx] / dataSize;
		}
	}

	if (BITMASK_SIGN_CHANGES&CalcBitMask)
	{
		const float mean = DataBufferF32.Mean;

		int8_t sign[2];
		sign[0] = DataBufferF32.Data[0] > mean ? 1 : -1;
		uint16_t result = 0;
		for (size_t i = 1; i < dataSize; ++i)
		{
			sign[i%2] = DataBufferF32.Data[i] > mean ? 1 : -1;

			result += abs(sign[0] + sign[1]) / 2;
		}
		DataBufferF32.SignChanges = result;
	}

	if(BITMASK_MIN&CalcBitMask)
	{
		float minValue = DataBufferF32.Data[0];
		for (size_t i = 1; i < DataBufferF32.Size; ++i)
		{
			const float value = DataBufferF32.Data[i];
			if (minValue > value)
				minValue = value;
		}
		DataBufferF32.Min = minValue;
	}

	if (BITMASK_MAX&CalcBitMask)
	{
		float maxValue = DataBufferF32.Data[0];
		for (size_t i = 1; i < DataBufferF32.Size; ++i)
		{
			const float value = DataBufferF32.Data[i];
			if (maxValue < value)
				maxValue = value;
		}
		DataBufferF32.Max = maxValue;
	}
}

float MinF32()
{
	return DataBufferF32.Min;
}

float MaxF32()
{
	return DataBufferF32.Max;
}

float MeanF32()
{
	return DataBufferF32.Mean;
}

float RootMeanSquareF32()
{
	return sqrtf(DataBufferF32.Moments[MOMENT_2]);
}

float CountSignChangesF32()
{
	return DataBufferF32.SignChanges;
}

float VarianceF32()
{
	return DataBufferF32.Moments[MOMENT_2];
}

float PetrosianFractalDimensionF32()
{
	const float lg = log10f(DataBufferF32.Size);
	return lg / (lg + log10f(DataBufferF32.Size / (DataBufferF32.Size + 0.4*DataBufferF32.SignChanges)));
}

float SkewnessF32()
{
	if (DataBufferF32.Moments[MOMENT_2] < 1E-6)
		return 0.f;

	return DataBufferF32.Moments[MOMENT_3] / sqrtf(DataBufferF32.Moments[MOMENT_2] * DataBufferF32.Moments[MOMENT_2] * DataBufferF32.Moments[MOMENT_2]);
}

float KurtosisF32()
{
	if (DataBufferF32.Moments[MOMENT_2] < 1E-6)
		return 0.f;

	return (DataBufferF32.Moments[MOMENT_4] / (DataBufferF32.Moments[MOMENT_2] * DataBufferF32.Moments[MOMENT_2]))-3;
}
