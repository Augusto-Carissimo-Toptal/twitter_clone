FROM ruby:3.1.3

ARG RAILS_ENV
ARG PORT=3000

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client postgresql-contrib libpq-dev build-essential

WORKDIR /app
RUN gem update --system
RUN gem install bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install


ADD . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE ${PORT}

CMD bin/rails server -p 3000 -b '0.0.0.0'
