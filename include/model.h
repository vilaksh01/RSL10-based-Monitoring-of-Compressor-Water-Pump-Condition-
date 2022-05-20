#ifndef NEUTON_MODEL_MODEL_H
#define NEUTON_MODEL_MODEL_H

#ifdef __cplusplus
extern "C"
{
#endif

/* Model info */
#define NEUTON_MODEL_HEADER_VERSION 3
#define NEUTON_MODEL_QLEVEL 32
#define NEUTON_MODEL_FLOAT_SUPPORT 1
#define NEUTON_MODEL_TASK_TYPE 0  // multiclass classification
#define NEUTON_MODEL_NEURONS_COUNT 8
#define NEUTON_MODEL_WEIGHTS_COUNT 27
#define NEUTON_MODEL_INPUTS_COUNT 108
#define NEUTON_MODEL_INPUTS_COUNT_ORIGINAL 12
#define NEUTON_MODEL_INPUT_LIMITS_COUNT 108
#define NEUTON_MODEL_OUTPUTS_COUNT 4
#define NEUTON_MODEL_LOG_SCALE_OUTPUTS 0
#define NEUTON_MODEL_HAS_CLASSES_RATIO 0
#define NEUTON_MODEL_HAS_NEGPOS_RATIO 0

/* Preprocessing */
#define NEUTON_PREPROCESSING_ENABLED 1
#define NEUTON_MODEL_WINDOW_SIZE 2
#define NEUTON_DROP_ORIGINAL_FEATURES 1
#define NEUTON_BITMASK_ENABLED 1
#define NEUTON_INPUTS_IS_INTEGER 0
#define NEUTON_MODEL_SA_PRECISION 24

/* Types */
typedef float input_t;
typedef float extracted_feature_t;
typedef float coeff_t;
typedef float weight_t;
typedef double acc_signed_t;
typedef double acc_unsigned_t;
typedef uint8_t sources_size_t;
typedef uint8_t weights_size_t;
typedef uint8_t neurons_size_t;

/* Scaling */
static const extracted_feature_t extractedFeaturesScaleMin[] = {
	0, 0, 0, 0, 0, 0, 1, -0.0091742119, -2.0000002, -93.669998, -93.669998,
	-93.669998, 0, 0, 0, 1, -0.0022883546, -2, -11.92, -11.92, -11.92, 0, 0,
	0, 1, -0.00028609831, -2.0000002, -0.56, -0.56, -0.56, 0, 0, 0, 1, -4.4337798e-06,
	-2, -0.20999999, -0.2, -0.2, 0, 0, 0, 1, -1.0800244e-06, -2, -0.44, -0.34,
	-0.34, 0, 0, 0, 1, -5.1159077e-07, -2, -4.6999998, -4.6999998, -4.6999998,
	0, 0, 0, 1, -1.6523603e-07, -2, -2.6199999, -2.3199999, -2.3199999, 0,
	0, 0, 1, -7.4107021e-07, -2.0000002, -9.1599998, -7.6900001, -8.4250002,
	0, 0, 0, 1, -7.4107021e-07, -2.0000002, 98489, 98489, 98489, 0, 0, 0, 1,
	0, -2, 32.400002, 32.400002, 32.400002, 0, 0, 0, 1, -0.0011446067, -2,
	73, 73, 73, 0, 0, 0, 1, 0, -2 };
static const extracted_feature_t extractedFeaturesScaleMax[] = {
	358.79999, 358.79999, 358.79999, 0.25999999, 1, 0.067599997, 1.3569155,
	0.0091742119, 0, -91.870003, -91.870003, -91.870003, 0.18999863, 1, 0.036099479,
	1.3569155, 0.0022883546, 0, -10.27, -10.27, -10.27, 0.30499983, 1, 0.093024895,
	1.3569155, 0.00028609831, 0, 0.5, 0.5, 0.5, 0.45499998, 1, 0.20702499,
	1.3569155, 4.4337798e-06, 0, 0.17, 0.17, 0.17, 0.145, 1, 0.021024998, 1.3569155,
	1.0800244e-06, 0, 0.47, 0.5, 0.47, 0.45999998, 1, 0.21159998, 1.3569155,
	2.2168947e-06, 0, 4.5799999, 4.6999998, 4.5799999, 4.1500001, 1, 17.2225,
	1.3569155, 7.4107021e-07, 0, 2.26, 2.75, 2.26, 2.3499999, 1, 5.5224996,
	1.3569155, 2.9642783e-06, 0, 8.7299995, 8.7299995, 8.7299995, 5.6750002,
	1, 32.205627, 1.3569155, 1.0132626e-06, 0, 98501, 98501, 98501, 1, 1, 1,
	1.3569155, 0, 0, 37.290001, 37.290001, 37.290001, 0.049999237, 1, 0.0024999238,
	1.3569155, 0.00012719388, 0, 83.769997, 83.769997, 83.769997, 0.17500305,
	1, 0.030626068, 1.3569155, 0, 0 };

/* Limits */
static const uint8_t modelUsedInputsMask[] = {
	0x06, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x8c,
	0x32, 0x00 };

/* Structure */
static const weight_t modelWeights[] = {
	-0.5, -1, 1, 0.5, 0.5, -1, 0.31442195, -1, 0, 1, 0.5, 0.5, -1, 0.5, -0.5,
	-1, 0, -1, 1, -1, 0.5, -1, 0, 0, 0.5, -1, 0.5 };

static const sources_size_t modelLinks[] = {
	2, 9, 91, 100, 108, 0, 108, 0, 90, 91, 101, 108, 2, 108, 2, 95, 97, 101,
	108, 4, 108, 1, 24, 61, 108, 6, 108 };

static const weights_size_t modelIntLinksBoundaries[] = {
	0, 6, 8, 13, 15, 20, 21, 26 };
static const weights_size_t modelExtLinksBoundaries[] = {
	5, 7, 12, 14, 19, 21, 25, 27 };

static const coeff_t modelFuncCoeffs[] = { 40, 40, 40, 40, 40, 40, 40, 40 };
static const uint8_t modelFuncTypes[] = { 0, 0, 0, 0, 0, 0, 0, 0 };

static const neurons_size_t modelOutputNeurons[] = { 1, 3, 5, 7 };

#ifdef __cplusplus
}
#endif

#endif // NEUTON_MODEL_MODEL_H

