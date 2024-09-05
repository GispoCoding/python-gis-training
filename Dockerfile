FROM continuumio/miniconda3:24.7.1-0

ARG USER=lab
ARG ENVNAME=gis

EXPOSE 8888

WORKDIR /home/$USER

COPY env.yml ./env.yml

RUN conda env create --file env.yml --name $ENVNAME

RUN useradd -m $USER && chown $USER /home/$USER

USER $USER

RUN conda init
