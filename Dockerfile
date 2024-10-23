FROM continuumio/miniconda3:24.7.1-0

ARG USER=lab-user
ARG ENV_NAME=gis
ARG DEBIAN_FRONTEND=noninteractive

EXPOSE 8888

RUN apt-get update && apt-get install -y vim

RUN useradd --create-home $USER

# Only include path in prompt (Emulate what anaconda prompt looks like on
# windows)
RUN echo "PS1='\$PWD> '" >> /home/$USER/.bashrc

WORKDIR /home/$USER/gis-lab

COPY environment.yml ./environment.yml

USER $USER

RUN conda env create --file environment.yml --name $ENV_NAME && conda init
