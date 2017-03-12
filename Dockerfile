FROM ruby_tedy

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /threepx
WORKDIR /threepx

ADD Gemfile /threepx/Gemfile
ADD Gemfile.lock /threepx/Gemfile.lock

RUN bundle install

ADD . /threepx