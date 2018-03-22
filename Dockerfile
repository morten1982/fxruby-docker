FROM ruby:2.5
LABEL maintainer="Raj Sahae <rajsahae@gmail.com>"

RUN apt-get update && \
  apt-get install -y \
    libfox-1.6-dev \
    libxrandr-dev \
    pkg-config

RUN gem install --verbose fxruby

RUN mkdir -p /usr/local/app
COPY app.rb /usr/local/app/app.rb

CMD ["ruby", "/usr/local/app/app.rb"]
