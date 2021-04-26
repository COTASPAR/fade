mkdir pico
cd pico
git clone -b master https://github.com/raspberrypi/pico-sdk.git
cd pico-sdk
git submodule update --init
cd ..
sudo apt update
sudo apt install -y cmake gcc-arm-none-eabi build-essential wget
echo "Installed dependencies"
cd ..
