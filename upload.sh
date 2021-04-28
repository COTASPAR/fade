#!/bin/bash

CONTID=$(ssh -Tp 4321 root@127.0.0.1 balena ps -aqf "name=flashing")  
ELF=$(find ./build/ -maxdepth 1 -name '*.elf')

echo $ELF
echo $CONTID

scp -P 4321 $ELF root@127.0.0.1:/mnt/data/

ssh -Tp 4321 root@127.0.0.1 balena cp /mnt/data/pwm_led.elf $CONTID:/pico_flashing/pwm_led.elf

ssh -p 4321 root@127.0.0.1 "balena exec $CONTID openocd -f interface/raspberrypi-swd.cfg -f target/rp2040.cfg -c 'program /pico_flashing/pwm_led.elf verify reset exit'"
 