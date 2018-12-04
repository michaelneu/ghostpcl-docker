FROM debian:latest

LABEL  maintainer "Michael Neu docker@michaeln.eu"

ARG release_name=gs926
ARG archive_name=ghostpcl-9.26-linux-x86_64

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/${release_name}/${archive_name}.tgz \
  && tar -xvzf ${archive_name}.tgz \
  && cp ${archive_name}/* /usr/bin

USER 1000:1000

ENTRYPOINT [ "gpcl6-926-linux-x86_64" ]
