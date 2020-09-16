FROM ruby:2.6.6
ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm vim curl && rm -rf /var/lib/apt/lists/*
RUN curl https://cli-assets.heroku.com/install.sh | sh
RUN npm install npm@latest -g
RUN npm install yarn -g --force

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 3000
