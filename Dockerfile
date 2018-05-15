FROM ubuntu:latest

MAINTAINER delgemoon "delgemoon@gmail.com"

RUN mkdir /app

WORKDIR /app
ADD * /app/
RUN   	apt-get update \
	&& apt-get install -y python3-pip python3-dev \
	&& apt-get install -y librtmp-dev libffi-dev 	 
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "app.py"]

