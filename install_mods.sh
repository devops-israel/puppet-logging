#!/bin/sh
set -x -e

which bundle || gem install bundler --no-ri --no-rdoc
bundle install
bundle exec librarian-puppet install
