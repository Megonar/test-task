FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /my_repo

WORKDIR /my_repo

COPY Gemfile /my_repo/Gemfile

COPY Gemfile.lock /my_repo/Gemfile.lock

RUN gem install bundler -v 2.1.4

RUN bundle install

EXPOSE 3001

CMD ["rails", "server", "-p 3001"]
