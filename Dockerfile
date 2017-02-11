FROM resin/rpi-raspbian:jessie

RUN apt-get update \
  && apt-get upgrade \
  && apt-get install -y --no-install-recommends git \
  && useradd -d /home/retropie -G sudo -m retropie \
  && echo "retropie ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/retropie
  
USER retropie

WORKDIR /home/retropie

RUN git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git \
  && cd RetroPie-Setup \
  && sudo ./retropie_packages.sh setup basic_install 

RUN sudo usermod -a -G video retropie

CMD "emulationstation"
