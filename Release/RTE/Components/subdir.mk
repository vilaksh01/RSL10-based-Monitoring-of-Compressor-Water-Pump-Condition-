################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BHy1_driver_and_MCU_solution/driver/src/bhy.c \
C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BHy1_driver_and_MCU_solution/examples/firmware/bhy1_firmware.c \
C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BHy1_driver_and_MCU_solution/driver/src/bhy_uc_driver.c \
C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BME680_driver/bme680.c 

OBJS += \
./RTE/Components/bhy.o \
./RTE/Components/bhy1_firmware.o \
./RTE/Components/bhy_uc_driver.o \
./RTE/Components/bme680.o 

C_DEPS += \
./RTE/Components/bhy.d \
./RTE/Components/bhy1_firmware.d \
./RTE/Components/bhy_uc_driver.d \
./RTE/Components/bme680.d 


# Each subdirectory must supply rules for building sources it contributes
RTE/Components/bhy.o: C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BHy1_driver_and_MCU_solution/driver/src/bhy.c RTE/Components/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -include"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RTE/Components/bhy1_firmware.o: C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BHy1_driver_and_MCU_solution/examples/firmware/bhy1_firmware.c RTE/Components/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -include"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RTE/Components/bhy_uc_driver.o: C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BHy1_driver_and_MCU_solution/driver/src/bhy_uc_driver.c RTE/Components/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -include"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RTE/Components/bme680.o: C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/Components/BME680_driver/bme680.c RTE/Components/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -include"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

