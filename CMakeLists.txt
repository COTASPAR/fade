cmake_minimum_required(VERSION 3.13)

# initialize the SDK based on PICO_SDK_PATH
# note: this must happen before project()
include(pico_sdk_import.cmake)

project(blink C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

set(PICO_EXAMPLES_PATH ${PROJECT_SOURCE_DIR})

# initialize the Raspberry Pi Pico SDK
pico_sdk_init()

add_executable(pwm_led
	pwm_led.c
	)

# Pull in our pico_stdlib which pulls common utilities
target_link_libraries(pwm_led pico_stdlib hardware_pwm)

# Create map/bin/hex file etc.
pico_add_extra_outputs(pwm_led)
