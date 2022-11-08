FROM python:3.9.15-buster
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y ffmpeg
RUN apt-get install -y git
RUN pip install pytube
RUN pip install git+https://github.com/openai/whisper.git

WORKDIR /usr/bin
COPY . /usr/bin