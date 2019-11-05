FROM debian

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN apt-get install bzip2 -y
RUN useradd teamspeak 

WORKDIR /home/teamspeak

EXPOSE 9987/udp 
EXPOSE 10011 
EXPOSE 30033

RUN wget http://dl.4players.de/ts/releases/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2
RUN tar xvf teamspeak3-server_linux_amd64-3.6.1.tar.bz2

ENTRYPOINT ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]

#docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 -e TS3SERVER_LICENSE=accept <name_image>
