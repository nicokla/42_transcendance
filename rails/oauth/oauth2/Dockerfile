FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -yq && \
	apt-get install -yq curl && \
	curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -yq && \
	apt-get install -yq git-core zlib1g-dev build-essential libssl-dev \
	libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev \
	libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev \
	tzdata \
	nodejs yarn \
	libpq-dev postgresql-client

ENV PATH="/root/.rbenv/bin:/root/.rbenv/plugins/ruby-build/bin:/root/.rbenv/versions/2.7.0/bin:$PATH"
ENV RUBYOPT="-W:no-deprecated -W:no-experimental"
RUN git clone https://github.com/rbenv/rbenv.git /root/.rbenv && \
	git clone https://github.com/rbenv/ruby-build.git /root/.rbenv/plugins/ruby-build && \
	eval "$(rbenv init -)" && \
	rbenv install 2.7.0 && \
	rbenv global 2.7.0

RUN gem install bundler && \
	rbenv rehash && \
	gem install rails -v 6.0.3.1 && \
	rbenv rehash

RUN mkdir /transcendance/
COPY ./ /transcendance/
WORKDIR /transcendance/
RUN yarn install --check-files
RUN bundle install

EXPOSE 3000
