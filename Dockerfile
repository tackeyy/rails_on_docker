FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# aws-cliのインストール
RUN apt-get install -y python2.7-dev \
 && curl -O https://bootstrap.pypa.io/get-pip.py \
 && python get-pip.py \
 && pip install awscli

RUN mkdir /docker_on_rails

WORKDIR /docker_on_rails

ENV BUNDLE_JOBS=4

ADD Gemfile /docker_on_rails/Gemfile
ADD Gemfile.lock /docker_on_rails/Gemfile.lock

RUN bundle install
