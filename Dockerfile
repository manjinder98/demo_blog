FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql

# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.12.3 && \
  ln -sf $HOME/.yarn/bin/yarn /usr/local/bin/yarn && \
  ln -sf $HOME/.yarn/bin/yarnpkg /usr/local/bin/yarnpkg

# Create application directory and install app dependencies
RUN mkdir /demo_blog
WORKDIR /demo_blog
COPY Gemfile /demo_blog/Gemfile
COPY Gemfile.lock /demo_blog/Gemfile.lock
RUN yarn install --check-files
RUN gem install bundler && bundle install
COPY . /demo_blog

# Expose port 3000 to the Docker host
EXPOSE 3000