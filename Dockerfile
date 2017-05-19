FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /ruletaRails
WORKDIR /ruletaRails

ADD Gemfile /ruletaRails/Gemfile
ADD Gemfile.lock /ruletaRails/Gemfile.lock

RUN bundle install

ADD . /ruletaRails