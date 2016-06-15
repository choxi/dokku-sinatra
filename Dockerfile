# Pull base image.
FROM ruby

RUN gem install sinatra


VOLUME ["/data"]

ADD . /data

WORKDIR /data

EXPOSE 5000

CMD ruby app.rb -p $PORT
