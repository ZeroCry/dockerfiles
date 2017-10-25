# http://wiki.paparazziuav.org/wiki/Installation

FROM ubuntu:latest

ADD deps.sh .

RUN bash deps.sh

RUN git clone --origin upstream https://github.com/paparazzi/paparazzi.git

WORKDIR paparazzi

RUN git checkout -b v5.12_stable \
 #&& cp conf/system/udev/rules/*.rules /etc/udev/rules.d/ \
 #&& udevadm control --reload-rules \
 && make

ENTRYPOINT [ "./paparazzi" ]
