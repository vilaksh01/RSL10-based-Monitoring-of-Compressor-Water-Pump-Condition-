#ifndef NEUTON_FE_STATISTICAL_DSP_H
#define NEUTON_FE_STATISTICAL_DSP_H

#if !defined(SA_PRECISION)

	#error SA_PRECISION should be defined

#elif SA_PRECISION == 24

	#include "DSPF32.h"

	#define InitDataBuffer InitDataBufferF32
	#define Min MinF32
	#define Max MaxF32
	#define Mean MeanF32
	#define RootMeanSquare RootMeanSquareF32
	#define CountSignChanges CountSignChangesF32
	#define Variance VarianceF32
	#define PetrosianFractalDimension PetrosianFractalDimensionF32
	#define Skewness SkewnessF32
	#define Kurtosis KurtosisF32

#elif SA_PRECISION == 7

	#include "DSPSI8.h"

	#define InitDataBuffer InitDataBufferSI8
	#define Min MinSI8
	#define Max MaxSI8
	#define Mean MeanSI8
	#define RootMeanSquare RootMeanSquareSI8
	#define CountSignChanges CountSignChangesSI8
	#define Variance VarianceSI8
	#define PetrosianFractalDimension PetrosianFractalDimensionSI8
	#define Skewness SkewnessSI8
	#define Kurtosis KurtosisSI8

#elif SA_PRECISION == 8

	#include "DSPUI8.h"

	#define InitDataBuffer InitDataBufferUI8
	#define Min MinUI8
	#define Max MaxUI8
	#define Mean MeanUI8
	#define RootMeanSquare RootMeanSquareUI8
	#define CountSignChanges CountSignChangesUI8
	#define Variance VarianceUI8
	#define PetrosianFractalDimension PetrosianFractalDimensionUI8
	#define Skewness SkewnessUI8
	#define Kurtosis KurtosisUI8

#elif SA_PRECISION == 15

	#include "DSPSI16.h"

	#define InitDataBuffer InitDataBufferSI16
	#define Min MinSI16
	#define Max MaxSI16
	#define Mean MeanSI16
	#define RootMeanSquare RootMeanSquareSI16
	#define CountSignChanges CountSignChangesSI16
	#define Variance VarianceSI16
	#define PetrosianFractalDimension PetrosianFractalDimensionSI16
	#define Skewness SkewnessSI16
	#define Kurtosis KurtosisSI16

#elif SA_PRECISION == 16

	#include "DSPUI16.h"

	#define InitDataBuffer InitDataBufferUI16
	#define Min MinUI16
	#define Max MaxUI16
	#define Mean MeanUI16
	#define RootMeanSquare RootMeanSquareUI16
	#define CountSignChanges CountSignChangesUI16
	#define Variance VarianceUI16
	#define PetrosianFractalDimension PetrosianFractalDimensionUI16
	#define Skewness SkewnessUI16
	#define Kurtosis KurtosisUI16

#else

	#error Unsupported SA_PRECISION value

#endif

#endif // NEUTON_FE_STATISTICAL_DSP_H
