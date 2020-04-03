FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql
# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.12.3 && \
  ln -sf $HOME/.yarn/bin/yarn /usr/local/bin/yarn && \
  ln -sf $HOME/.yarn/bin/yarnpkg /usr/local/bin/yarnpkg
RUN mkdir /demo_blog
WORKDIR /demo_blog
ADD Gemfile /demo_blog/Gemfile
ADD Gemfile.lock /demo_blog/Gemfile.lock
RUN yarn install --check-files
RUN bundle install
RUN rake webpacker:install
ADD . /demo_blog