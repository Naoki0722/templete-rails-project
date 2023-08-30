FROM ruby:3.1

ARG RUBYGEMS_VERSION=3.3.20

RUN mkdir /myapp
WORKDIR /myapp

ADD ./web/ /myapp/

RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
