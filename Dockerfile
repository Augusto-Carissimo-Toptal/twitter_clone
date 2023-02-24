FROM ruby:3.1.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client postgresql-contrib libpq-dev build-essential && rm -rf /var/cache/apk/*

WORKDIR /app
COPY . /app/

WORKDIR /app
RUN gem update --system
RUN gem install bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install

ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000