bundle install --path vendor/bundle
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
