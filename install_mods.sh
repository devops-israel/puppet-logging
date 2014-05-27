#!/bin/sh
set -x -e

bundle install
bundle exec librarian-puppet install
