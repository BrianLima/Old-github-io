FROM ruby:2.4

RUN mkdir /app
WORKDIR /app

COPY Gemfile* /app/
RUN bundle install

COPY . /app/

RUN apt-get update -y && \
    apt-get install -y locales && \
    rm -rf /var/lib/apt/lists/*

RUN locale-gen C.UTF-8 en_US.UTF-8 && \
  /usr/sbin/update-locale LANG=C.UTF-8

RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8


CMD ["bundle", "exec", "jekyll", "serve", "-H0.0.0.0", "--incremental"]
