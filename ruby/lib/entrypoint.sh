#!/bin/sh
set -e

if [ -f ./tmp/pids/server.pid ]; then
  rm ./tmp/pids/server.pid
fi

for n in {1..6}; do  
  (bundle exec rake db:migrate || bundle exec rake db:setup || echo "Database migration/setup failed. Retry in 10s...") && break
  sleep 10
done

exec bundle exec "$@"
