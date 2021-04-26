mkdir pico
cd pico
git clone -b master https://github.com/raspberrypi/pico-sdk.git
PICO_PATH="$(pwd)/pico-sdk"

# Set the PICO_SDK_PATH environment variable to where you just cloned the repo.
export PICO_SDK_PATH=$PICO_PATH

cd pico-sdk
git submodule update --init
cd ..
sudo apt update
sudo apt install -y cmake gcc-arm-none-eabi build-essential
