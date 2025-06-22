bundle install
bundle exec rake db:migrate
bundle exec rake assets:precompile

bin/rails db:migrate