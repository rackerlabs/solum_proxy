FROM ubuntu:trusty
MAINTAINER Vijendar Komalla <vijendar.komalla@rackspace.com>

RUN apt-get -yqq update
RUN apt-get -yqq install python-dev python-pip

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD python app.py
