FROM ubuntu

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl -y

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install nodejs -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install --no-install-recommends yarn

COPY app.js /

CMD ["nodejs", "app.js"]

# docker build -t nodejs .
# docker run -it nodejs

