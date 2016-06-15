# Pull base image.
FROM ruby

RUN gem install sinatra


VOLUME ["/data"]

ADD . /data

WORKDIR /data

CMD ruby app.rb -p $PORT
