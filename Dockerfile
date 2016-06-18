# Pull base image.
FROM ruby

VOLUME    ["/data"]
ADD       . /data
WORKDIR   /data
RUN       bundle install

CMD ruby app.rb -o 0.0.0.0 -p $PORT
