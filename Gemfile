source "https://rubygems.org"

gem "sinatra"

# allows us to write code that simulates how a user interacts with our app.
# We can write such code in our integration tests and thus test the functionality of our application.
# Source:
# https://learn.co/tracks/full-stack-web-development-v7/sinatra/forms/intro-to-capybara-tests
gem "capybara"
gem "rspec"


# Added gems per this lesson here:
# https://learn.co/tracks/full-stack-web-development-v7/sinatra/activerecord/activerecord-setup-in-sinatra

# A thin and fast web server
gem 'thin'

# A wonderfully simple way to load your code
gem 'require_all'


gem 'activerecord'

# Extends Sinatra with ActiveRecord helpers
gem 'sinatra-activerecord'

# Rake is a Make-like program implemented in Ruby. Tasks and dependencies are specified in standard Ruby syntax.
gem 'rake'

#
group :development do
  # Shotgun re-reads your app every time you make a change
  # this way you don't have to stop and start your server every time you make a change
  gem "shotgun"
  
  gem 'pry'
  gem 'tux'
  gem 'sqlite3'
end
