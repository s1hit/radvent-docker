#!/bin/sh
rake db:migrate
rails server -e production -b 0.0.0.0
