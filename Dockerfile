FROM ruby:2.7

# Install system dependencies for Jekyll
RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    build-essential \
    libffi-dev \
    && apt-get clean

WORKDIR /home/app
COPY Gemfile* ./
RUN bundle install
COPY . .
CMD [ "bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0" ]