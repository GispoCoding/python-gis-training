FROM continuumio/miniconda3:24.7.1-0

ARG USER=lab-user
ARG ENV_NAME=gis
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y vim

EXPOSE 8888

WORKDIR /home/$USER/gis-lab

COPY env.yml ./env.yml

RUN useradd -m $USER && chown -R $USER /home/$USER

USER $USER

RUN conda env create --file env.yml --name $ENV_NAME \
&& conda init
