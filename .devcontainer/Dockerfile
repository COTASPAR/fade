# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.162.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version: buster, stretch
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends cmake gcc-arm-none-eabi build-essential 
#RUN sudo apt update
#RUN sudo apt install -y cmake gcc-arm-none-eabi build-essential wget

# Make folder where to store project
#RUN mkdir /pico_flashing

#WORKDIR /pico_flashing

# We need to override the 64-bit vscode.deb check (for now), and stay with 32-bit.  So we end up overwriting theirs with our own.
#RUN git clone https://github.com/raspberrypi/pico-setup.git
#COPY pico_setup.sh pico-setup/pico_setup.sh
#RUN chmod +x pico_setup.sh && /bin/bash -e pico_setup.sh
#RUN export PICO_SDK_PATH=/pico_flashing/pico/pico-sdk 

#RUN wget https://github.com/balena-io/balena-cli/releases/download/v12.44.11/balena-cli-v12.44.11-linux-x64-standalone.zip
#RUN unzip balena-cli-v12.44.11-linux-x64-standalone.zip
#RUN export PATH="$PATH:pico_flashing/balena-cli"


#CMD /bin/bash


