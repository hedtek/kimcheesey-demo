#!/bin/bash
bundle
createuser microblog -s
if [[ ! -e config/database.yml ]]; then
  cp config/database.example.yml config/database.yml
fi
if [[ ! -e config/application.yml ]]; then
  cp config/application.example.yml config/application.yml
fi
rake db:create:all db:migrate db:test:prepare db:seed
