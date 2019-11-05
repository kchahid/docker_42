FROM ruby:2.6.1

RUN apt-get update -y
RUN apt-get upgrade -y
RUN gem install rails
RUN apt-get install nodejs -y

ONBUILD COPY app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD RUN sed -i "s/'sqlite3'/'sqlite3', '~> 1.3.6'/g" Gemfile
ONBUILD RUN bundle install
ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed

# docker build -t ft-rails:on-build .
