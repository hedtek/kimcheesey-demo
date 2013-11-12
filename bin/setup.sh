#!/bin/bash
bundle
createuser kimcheesey -s
if [[ ! -e config/application.yml ]]; then
  cp config/application.example.yml config/application.yml
fi
rake db:create:all db:migrate db:test:prepare db:seed
