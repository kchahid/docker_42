FROM ubuntu

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt install python-pip -y
RUN mkdir /rosehosting
RUN mkdir /rosehosting/python
COPY script.sh /
RUN chmod 777 script.sh
ENTRYPOINT ["sh", "script.sh"]
