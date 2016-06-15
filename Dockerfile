# Pull base image.
FROM ruby

RUN gem install sinatra

# Define default command.
CMD ["bash"]
