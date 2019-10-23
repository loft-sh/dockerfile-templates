FROM ruby:2.6-alpine

# Install important dependencies
RUN apk add build-base nodejs yarn tzdata sqlite-dev postgresql-client postgresql-dev python

# Create project directory (workdir)
RUN mkdir /app
WORKDIR /app

# Copy Gemfile and Gemfile.lock to WORKDIR
COPY Gemfile .
COPY Gemfile.lock .

# Install dependencies
RUN bundle install

# Copy application into container
COPY . .

# Use the following lines for Rails Apps
RUN yarn install --check-files && bundle exec rails webpacker:install
CMD ["bundle", "exec", "rails", "server", "-p", "3000", "-b", "0.0.0.0"]

# Use the following line for Non-Rails Apps
# CMD ["ruby", "your-app.rb"]