# Set the base image to Ubuntu
FROM ubuntu:latest

MAINTAINER TMacCormaic 10511610@mydbs.ie

RUN apt-get update

RUN apt-get install -y python3 python3-pip

ADD /myflaskapp /myflaskapp

RUN pip3 install --upgrade pip

RUN pip3 install -r myflaskapp/requirements.txt

RUN pip3 install Flask

EXPOSE 5000

WORKDIR /myflaskapp

CMD python3 flaskapp.py
