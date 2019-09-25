require "bundler"
Bundler.require

# Although this lists out all of the controllers the Sinatra app must use,
# if you add another controller to this list, you must also add it to the config.ru
# This seems to violate DRY, but I do not yet know how to tell sinatra to use "all"
# controllers within a directory
require_relative '../app/controllers/application_controller'
require_relative '../app/controllers/auxiliary_controller'
require_relative '../app/controllers/model_controller'
require_relative '../app/controllers/cat_controller'

# You must also list all of the models in this environment file
require_relative '../app/models/first_model'
require_relative '../app/models/second_model_nested'
require_relative '../app/models/cat'

# The above statements can be simplified using this Bundler statement:
# require_all './app'
# but there are some other elements that need to be used to implement this.
# I will come back to make this work properly

# https://learn.co/tracks/full-stack-web-development-v7/sinatra/activerecord/activerecord-setup-in-sinatra
# we still need to set up a connection to our database. Add the following block of code:
ENV['SINATRA_ENV'] ||= "development"

# I am still not sure what "bundler/setup" does
require 'bundler/setup'

# Why add SINATRA_ENV=development, you might ask? Well, remember the top line
# of config/environment.rb? It's telling Sinatra that it should use the
#{ }"development" environment for both shotgun and the testing suite.
# Therefore, we want to make sure our migrations run on the same environment
# as well, and specifying SINATRA_ENV=development allows us to do that.
Bundler.require(:default, ENV['SINATRA_ENV'])

  configure :development do
    set :database, 'sqlite3:db/database.db'
  end
