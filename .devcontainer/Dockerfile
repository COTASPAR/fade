# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.162.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version: buster, stretch
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
RUN mkdir pico && cd /pico/ && git clone -b master https://github.com/raspberrypi/pico-sdk.git
RUN cd /pico-sdk/ && git submodule update --init
RUN cd ..
RUN sudo apt update
RUN sudo apt install -y cmake gcc-arm-none-eabi build-essential wget
RUN cd ..
RUN export PICO_SDK_PATH="$(pwd)/pico/pico-sdk"
RUN mkdir balena-cli
RUN cd balena-cli
RUN wget https://github.com/balena-io/balena-cli/releases/download/v12.44.11/balena-cli-v12.44.11-linux-x64-standalone.zip
RUN unzip balena-cli-v12.44.11-linux-x64-standalone.zip
RUN export PATH="$PATH:$(pwd)/balena-cli"
RUN cd ..
RUN echo "Everything is configured now"
