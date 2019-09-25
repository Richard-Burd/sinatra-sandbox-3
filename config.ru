require_relative 'config/environment.rb'

# https://learn.co/tracks/full-stack-web-development-v7/sinatra/activerecord/activerecord-in-sinatra
# We'll need to update config.ru to use the Sinatra Middleware that lets our app
# send patch requests.
use Rack::MethodOverride
# The MethodOverride middleware will intercept every request sent and received
# by our application. If it finds a request with name="_method", it will set
# the request type based on what is set in the value attribute, which in this
# case is patch.


use CatController
use ModelController
use AuxiliaryController
run ApplicationController

# In bash type:
# $ rackup config.ru
# ...you can just type "rackup" and it will look for the
# config.ru

# Go to a web browser and go to this URL:
# http://localhost:9292/

# Left off on this video here:
# https://www.youtube.com/watch?time_continue=3&v=LSUevS1PRTg
# At 36:56 / 1:03:59
