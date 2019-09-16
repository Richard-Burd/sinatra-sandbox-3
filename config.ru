require_relative 'config/environment.rb'

use AuxiliaryController
run ApplicationController

# In bash type:
# $ rackup config.ru
# ...you can just type "rackup" and it will look for the 
# config.ru

# Left off on this video here:
# https://www.youtube.com/watch?time_continue=3&v=LSUevS1PRTg
# At 36:56 / 1:03:59