FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# aws-cliのインストール
RUN apt-get install -y python2.7-dev \
 && curl -O https://bootstrap.pypa.io/get-pip.py \
 && python get-pip.py \
 && pip install awscli

RUN mkdir /rails_on_docker

WORKDIR /rails_on_docker

ENV BUNDLE_JOBS=4

ADD Gemfile /rails_on_docker/Gemfile
ADD Gemfile.lock /rails_on_docker/Gemfile.lock

RUN bundle install
