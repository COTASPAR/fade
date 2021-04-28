#!/bin/bash
export PICO_SDK_PATH="/workspaces/fade/pico/pico-sdk"
mkdir -p /workspaces/fade/build/
pushd /workspaces/fade/build/
cmake ..
make -j4
popd