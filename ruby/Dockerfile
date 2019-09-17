FROM ruby

RUN bundle config --global frozen 1

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

# Run application
CMD ["ruby", "app.rb"]
