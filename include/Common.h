#ifndef NEUTON_FE_STATISTICAL_COMMON_H
#define NEUTON_FE_STATISTICAL_COMMON_H

#include <stdint.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

#define BITMASK_MEAN			(1u<<0)
#define BITMASK_MOMENT_2		(1u<<1)
#define BITMASK_MOMENT_3		(1u<<2)
#define BITMASK_MOMENT_4		(1u<<3)
#define BITMASK_SIGN_CHANGES	(1u<<4)
#define BITMASK_MIN				(1u<<5)
#define BITMASK_MAX				(1u<<6)

extern const uint8_t featuresCalculationRequestedMask[];

enum Moments
{
	MOMENT_2 = 0,
	MOMENT_3,
	MOMENT_4,

	MOMENT_COUNT
};


enum ExtractedFeatures
{
	EF_MIN = 0,
	EF_MAX,
	EF_MEAN,
	EF_RMS,
	EF_SIGN_CHANGES,
	EF_VARIANCE,
	EF_PFD,
	EF_SKEWNESS,
	EF_KURTOSIS,

	EF_COUNT
};

#ifdef __cplusplus
}
#endif

#endif // NEUTON_FE_STATISTICAL_COMMON_H
