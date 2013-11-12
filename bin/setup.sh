#!/bin/bash
bundle
createuser kimcheesey -s
rake db:create:all db:migrate db:test:prepare db:seed
