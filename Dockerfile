FROM centos:7.3.1611

MAINTAINER Koichi Ashizaki

RUN \
  set -x \
  yum update -y && \
  yum install -y \
  wget \
  which && \
  yum clean all

ENV CELLRANGER_VER 3.0.1

# Pre-downloaded file
COPY cellranger-$CELLRANGER_VER.tar.gz /opt/cellranger-$CELLRANGER_VER.tar.gz

RUN \
  cd /opt && \
  tar -xzvf cellranger-$CELLRANGER_VER.tar.gz && \
  export PATH=/opt/cellranger-$CELLRANGER_VER:$PATH && \
  ln -s /opt/cellranger-$CELLRANGER_VER/cellranger /usr/bin/cellranger && \
  rm -rf /opt/cellranger-$CELLRANGER_VER.tar.gz

CMD ["cellranger"]
