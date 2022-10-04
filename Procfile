web: bin/rails server -p ${PORT:-5000} -e $RAILS_ENV
# web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
worker: sidekiq
release: bin/rails db:migrate
PATH= "/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
