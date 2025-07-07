# FROM ruby:2.6.1-alpine3.9
# RUN apk add curl && gem install sinatra
# COPY app.rb .
# ENTRYPOINT ["ruby", "app.rb"]





# # Use a modern Ruby base image
# FROM ruby:3.2.2-alpine3.18

# # Install curl and Sinatra
# RUN apk add --no-cache curl && gem install sinatra

# # Copy your app code
# COPY app.rb .

# # Start the app
# ENTRYPOINT ["ruby", "app.rb"]





# FROM ruby:3.2.2-alpine3.18

# RUN apk add --no-cache curl
# RUN gem install sinatra

# COPY app.rb .

# ENTRYPOINT ["ruby", "app.rb"]






# FROM ruby:3.2.2-alpine3.18

# RUN apk add --no-cache curl
# RUN gem install sinatra rackup puma

# COPY app.rb .

# ENTRYPOINT ["ruby", "app.rb"]






FROM ruby:3.2.2-alpine3.18

# Install curl + build tools
RUN apk add --no-cache curl build-base

# Install the gems with native extensions
RUN gem install sinatra rackup puma

COPY app.rb .

ENTRYPOINT ["ruby", "app.rb"]
