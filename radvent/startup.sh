#!/bin/sh

rm -rf ./tmp/*

cat <<EOF > ./config/secrets.yml
test:
  secret_key_base: `rake secret`"
development:
  secret_key_base: `rake secret`"
production:
  secret_key_base: `rake secret`"
EOF

rake db:migrate

bundle exec rake assets:precompile

rails server -b 0.0.0.0
