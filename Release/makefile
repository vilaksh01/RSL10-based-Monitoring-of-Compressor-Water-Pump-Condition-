################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include RTE/Utility/subdir.mk
-include RTE/Device/RSL10/subdir.mk
-include RTE/Components/subdir.mk
-include RTE/Board_Support/subdir.mk
-include RTE/BLE/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.hex \

SECONDARY_SIZE += \
RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.siz \


# All Target
all: main-build

# Main-build Target
main-build: RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf secondary-outputs

# Tool invocations
RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM Cross C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -T "C:\Users\vilak\OneDrive\Documents\onsemi-workspace\RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition\RTE\Device\RSL10\sections.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.map" --specs=nano.specs -u _printf_float --specs=nosys.specs -o "RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf" -Wl,--start-group $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.hex: RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU ARM Cross Create Flash Image'
	arm-none-eabi-objcopy -O ihex "RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf"  "RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.hex"
	@echo 'Finished building: $@'
	@echo ' '

RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.siz: RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU ARM Cross Print Size'
	arm-none-eabi-size --format=berkeley "RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
