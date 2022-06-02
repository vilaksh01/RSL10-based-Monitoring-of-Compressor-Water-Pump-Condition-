################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/BLE/bdk_ble/src/BLE_BASS.c \
C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/BLE/bdk_ble/src/BLE_ICS.c \
C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/BLE/bdk_ble/src/BLE_PeripheralServer.c 

OBJS += \
./RTE/BLE/BLE_BASS.o \
./RTE/BLE/BLE_ICS.o \
./RTE/BLE/BLE_PeripheralServer.o 

C_DEPS += \
./RTE/BLE/BLE_BASS.d \
./RTE/BLE/BLE_ICS.d \
./RTE/BLE/BLE_PeripheralServer.d 


# Each subdirectory must supply rules for building sources it contributes
RTE/BLE/BLE_BASS.o: C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/BLE/bdk_ble/src/BLE_BASS.c RTE/BLE/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -include"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RTE/BLE/BLE_ICS.o: C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/BLE/bdk_ble/src/BLE_ICS.c RTE/BLE/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -include"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RTE/BLE/BLE_PeripheralServer.o: C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/source/firmware/BLE/bdk_ble/src/BLE_PeripheralServer.c RTE/BLE/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -I"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -I"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/config" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/Utility/SEGGER/RTT/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/api" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/components/bhy1_firmware" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/hal/cmsis_driver" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/BDK/1.19.0/include/target/RSL10_SENSE" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/bb" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/ble/profiles" -isystem"C:/Users/vilak/AppData/Local/Arm/Packs/ONSemiconductor/RSL10/3.6.465/include/kernel" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Board_Support" -isystem"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Device/RSL10" -include"C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

