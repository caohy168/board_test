################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/blink_ddr_test.c \
../src/blinkbist.c \
../src/blinkbist_autotest.c \
../src/bram_mem_test_example.c \
../src/ddrx_mem_test_example.c \
../src/hello_clocks.c \
../src/hello_hdmi.c \
../src/hello_iic.c \
../src/hello_lvds.c \
../src/hello_pmod.c \
../src/hello_uart.c \
../src/hello_user_sma.c \
../src/menu.c \
../src/platform.c \
../src/push_button_test.c \
../src/rotary_simple.c \
../src/xaxiethernet_example_intr_sgdma.c \
../src/xaxiethernet_example_util.c \
../src/xgpio_tapp_example.c \
../src/xsysmon_polled_printf_example.c \
../src/xtmrctr_intr_example.c 

OBJS += \
./src/blink_ddr_test.o \
./src/blinkbist.o \
./src/blinkbist_autotest.o \
./src/bram_mem_test_example.o \
./src/ddrx_mem_test_example.o \
./src/hello_clocks.o \
./src/hello_hdmi.o \
./src/hello_iic.o \
./src/hello_lvds.o \
./src/hello_pmod.o \
./src/hello_uart.o \
./src/hello_user_sma.o \
./src/menu.o \
./src/platform.o \
./src/push_button_test.o \
./src/rotary_simple.o \
./src/xaxiethernet_example_intr_sgdma.o \
./src/xaxiethernet_example_util.o \
./src/xgpio_tapp_example.o \
./src/xsysmon_polled_printf_example.o \
./src/xtmrctr_intr_example.o 

C_DEPS += \
./src/blink_ddr_test.d \
./src/blinkbist.d \
./src/blinkbist_autotest.d \
./src/bram_mem_test_example.d \
./src/ddrx_mem_test_example.d \
./src/hello_clocks.d \
./src/hello_hdmi.d \
./src/hello_iic.d \
./src/hello_lvds.d \
./src/hello_pmod.d \
./src/hello_uart.d \
./src/hello_user_sma.d \
./src/menu.d \
./src/platform.d \
./src/push_button_test.d \
./src/rotary_simple.d \
./src/xaxiethernet_example_intr_sgdma.d \
./src/xaxiethernet_example_util.d \
./src/xgpio_tapp_example.d \
./src/xsysmon_polled_printf_example.d \
./src/xtmrctr_intr_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_0/microblaze_0/include -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


