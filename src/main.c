//-----------------------------------------------------------------------------
// Copyright (c) 2018 Semiconductor Components Industries LLC
// (d/b/a "ON Semiconductor").  All rights reserved.
// This software and/or documentation is licensed by ON Semiconductor under
// limited terms and conditions.  The terms and conditions pertaining to the
// software and/or documentation are available at
// http://www.onsemi.com/site/pdf/ONSEMI_T&C.pdf ("ON Semiconductor Standard
// Terms and Conditions of Sale, Section 8 Software") and if applicable the
// software license agreement.  Do not use this software and/or documentation
// unless you have carefully read and you agree to the limited terms and
// conditions.  By using this software and/or documentation, you agree to the
// limited terms and conditions.
//-----------------------------------------------------------------------------
#include <stdio.h>
#include <math.h>
#include "main.h"

#include <BDK.h>
#include <BSP_Components.h>
#include <SoftwareTimer.h>

/* Copies measurement data for printing of status messages. */
void BME680_Callback(struct BME680_ENV_Data *output);

struct SensorFusion {
	float h;
	float p;
	float b;
	float xlinear;
	float ylinear;
	float zlinear;
	float xrotate;
	float yrotate;
	float zrotate;
	float pressure;
	float altitude;
	float temperature;
	float humidity;
} sensorFusion;

/** Converts measured orientation data into degrees.
 */

void ao_vector_cb(bhy_data_generic_t *data, bhy_virtual_sensor_t sensor) {
	sensorFusion.h = data->data_vector.x / 32768.0f * 360.0f;
	sensorFusion.p = data->data_vector.y / 32768.0f * 360.0f;
	sensorFusion.b = data->data_vector.z / 32768.0f * 360.0f;
}

/** Converts measured linear acceleration data based on sensors dynamic range
 */

void la_vector_cb(bhy_data_generic_t *data, bhy_virtual_sensor_t sensor) {
	/* Linear Acceleration sensor values are scaled using dynamic range. */
	uint16_t dyn_range = BHI160_NDOF_GetAccelDynamicRange();

	sensorFusion.xlinear = data->data_vector.x / 32768.0f * dyn_range;
	sensorFusion.ylinear = data->data_vector.y / 32768.0f * dyn_range;
	sensorFusion.zlinear = data->data_vector.z / 32768.0f * dyn_range;
}

void gyro_vector_cb(bhy_data_generic_t *data, bhy_virtual_sensor_t sensor) {
	uint16_t dyn_range = BHI160_NDOF_GetGyroDynamicRange();

	sensorFusion.xrotate = data->data_vector.x / 32768.0f * dyn_range;
	sensorFusion.yrotate = data->data_vector.y / 32768.0f * dyn_range;
	sensorFusion.zrotate = data->data_vector.z / 32768.0f * dyn_range;
}

int32_t bme680_status = -1;
struct BME680_ENV_Data bme680_output = { 0 };

int main(void) {
	int32_t retval;

	printf("Model size: %.2f bytes\r\n", (float) neuton_model_size());
	printf("Model outputs: %.2f \r\n", (float) neuton_model_outputs_count());
	printf("Model ram usage: %.2f bytes \r\n", (float) neuton_model_ram_usage());
	printf("Input count: %.2f \r\n", (float) neuton_model_inputs_count());
	printf("Window size: %.2f \r\n", (float) neuton_model_window_size());
	printf("Task type: %.2f \r\n", (float) neuton_model_task_type());
	printf("Quantization type: %.2f \r\n", (float) neuton_model_quantization_level());

	/* Initialize all needed BDK components. */
	BDK_Initialize();

	/* Initialize all LEDs to eliminate any currents from disabled DIO pads. */
	LED_Initialize(LED_RED);
	LED_Initialize(LED_GREEN);
	LED_Initialize(LED_BLUE);

	/* Increase I2C bus speed to 400kHz. */
	HAL_I2C_SetBusSpeed(HAL_I2C_BUS_SPEED_FAST);

	/* Initialize BHI160.
	 * This may take a while depending on bus speed because RAM patch has to be
	 * uploaded into BHI160 to enable support for BMM150 magnetometer.
	 *
	 * Set temporary timer to see how long it took to initialize and load the
	 * RAM patch.
	 */

	/** Initialize BME680 */
	retval = BME680_ENV_Initialize();
	if (retval == 0) {
		retval = BME680_ENV_StartPeriodic(BME680_Callback, 3000);
		if (retval == 0) {
			bme680_status = 0;
		} else {
			bme680_status = 2;
		}
	} else {
		bme680_status = 1;
	}
	HAL_Delay(1000);

	LED_On(LED_GREEN);
	{
		printf("Initializing BHI160.\r\n");

		struct SwTimer tim;
		struct SwTimer_Duration tim_dur;

		SwTimer_Initialize(&tim);
		SwTimer_Start(&tim);

		retval = BHI160_NDOF_Initialize();
		ASSERT_DEBUG(retval == BHY_SUCCESS);

		SwTimer_GetElapsed(&tim, &tim_dur);
		SwTimer_Remove(&tim);

		printf("BHI160 initialized in %lu seconds and %lu ns.\r\n",
				tim_dur.seconds, tim_dur.nanoseconds);
	}
	LED_Off(LED_GREEN);

	/* Enable desired virtual sensor outputs. */

	retval = BHI160_NDOF_EnableSensor(BHI160_NDOF_S_ORIENTATION, &ao_vector_cb,
			5);
	ASSERT_DEBUG(retval == BHY_SUCCESS);

	retval = BHI160_NDOF_EnableSensor(BHI160_NDOF_S_LINEAR_ACCELERATION,
			&la_vector_cb, 50);
	ASSERT_DEBUG(retval == BHY_SUCCESS);

	retval = BHI160_NDOF_EnableSensor(BHI160_NDOF_S_RATE_OF_ROTATION,
			&gyro_vector_cb, 50);
	ASSERT_DEBUG(retval == BHY_SUCCESS);

	while (1) {
		BDK_Schedule();

		LED_Off(LED_GREEN);
		LED_Off(LED_BLUE);
		LED_Off(LED_RED);

		if (bme680_status == 0) {
			sensorFusion.pressure = (float) bme680_output.pressure;
			sensorFusion.temperature = ((float) bme680_output.temperature)
					/ 100.0f;
			sensorFusion.humidity = ((float) bme680_output.humidity) / 1000.0f;
			sensorFusion.altitude = 44330
					* (1.0
							- pow((bme680_output.pressure / 100) / 1013.25,
									0.1903));

            /* Print all sensor values for data collection through terminal**/
			//	printf("%.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f \n",
			//			sensorFusion.h, sensorFusion.p, sensorFusion.b, sensorFusion.xlinear, sensorFusion.ylinear,
			//          sensorFusion.zlinear, sensorFusion.xrotate, sensorFusion.yrotate, sensorFusion.zrotate,
			//          sensorFusion.pressure, sensorFusion.temperature, sensorFusion.humidity);
		}

		float inputs[] = { sensorFusion.h, sensorFusion.p, sensorFusion.b,
				sensorFusion.xlinear, sensorFusion.ylinear,
				sensorFusion.zlinear, sensorFusion.xrotate,
				sensorFusion.yrotate, sensorFusion.zrotate,
				sensorFusion.pressure, sensorFusion.temperature,
				sensorFusion.humidity };

		if (neuton_model_set_inputs(inputs) == 0) {
			uint16_t predictedClass;
			float *probabilities;

			uint32_t t1 = HAL_Time();

			if (neuton_model_run_inference(&predictedClass, &probabilities)
					== 0) {
				// code for handling prediction result
				// printf("Predicted class %d \r\n", (int) predictedClass);
				uint32_t t2 = HAL_Time();

				if (predictedClass == 0) {
					printf("Class: %d, Label: Pump OFF, Inference time: %lu ms\r\n",
							(int) predictedClass, (t2 - t1));
				}
				if (predictedClass == 1) {
					printf("Class: %d, Label: Pump ON, Inference time: %lu ms\r\n",
							(int) predictedClass, (t2 - t1));
					LED_On(LED_GREEN);
				}
				if (predictedClass == 2) {
					printf("Class: %d, Label: No Air Filter, Inference time: %lu ms\r\n",
							(int) predictedClass, (t2 - t1));
					LED_On(LED_BLUE);
				}
				if (predictedClass == 3) {
					printf("Class: %d, Label: Air Inlet Closed, Inference time: %lu ms\r\n",
							(int) predictedClass, (t2 - t1));
					LED_On(LED_RED);
				}
			}
		}
		// HAL_Delay(1000);
		SYS_WAIT_FOR_INTERRUPT;
	}

	return 0;
}

void BME680_Callback(struct BME680_ENV_Data *output) {
	memcpy(&bme680_output, output, sizeof(struct BME680_ENV_Data));
}
