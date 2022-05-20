#ifndef NEUTON_FE_STATISTICAL_DSPF32_H
#define NEUTON_FE_STATISTICAL_DSPF32_H

#include "Common.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * \brief Init common data buffer to optimize calculations
 * \param p_BitMask Bit mask for executed fuctions
 * \param p_BitShift Bit shift in bit mask
 * \param p_Data Pointer to processed memory buffer
 * \param p_Size Size of the buffer
 */
void InitDataBufferF32(const uint8_t* p_BitMask, uint32_t p_BitShift, const float* p_Data, size_t p_Size);

/**
 * \brief Compute the minimum values simultaneously.
 */
float MinF32();

/**
 * \brief Compute the maximum values simultaneously.
 */
float MaxF32();

/**
 * \brief Compute the arithmetic mean.
 */
float MeanF32();

/**
 * \brief Compute the root mean square, [RMS](https://en.wikipedia.org/wiki/Root_mean_square).
 */
float RootMeanSquareF32();

/**
 * \brief Count the number of sign changes
 */
float CountSignChangesF32();

/**
 * \brief Compute the variance
 */
float VarianceF32();

/**
 * \brief Compute the Petrosian fractal dimension, PFD.
 */
float PetrosianFractalDimensionF32();

/**
 * \brief Compute the [skewness](https://en.wikipedia.org/wiki/Skewness)
 */
float SkewnessF32();

/**
 * \brief  Compute the [kurtosis](https://en.wikipedia.org/wiki/Kurtosis)
 */
float KurtosisF32();

#ifdef __cplusplus
}
#endif

#endif // NEUTON_FE_STATISTICAL_DSPF32_H
