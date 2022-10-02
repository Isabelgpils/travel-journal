PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
web: bin/rails server -p ${PORT:-5000} -e $RAILS_ENV
worker: sidekiq
release: bin/rails db:migrate