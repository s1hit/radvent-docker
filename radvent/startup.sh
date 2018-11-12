#!/bin/sh
rake db:migrate
rails server -b 0.0.0.0
