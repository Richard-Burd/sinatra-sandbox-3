require "bundler"
Bundler.require

# Although this lists out all of the models and controllers the Sinatra app must use,
# if you add another controller to this list, you must also add it to the config.ru
# This seems to violate DRY, but I do not yet know how to tell sinatra to use "all"
# controllers within a directory
require_relative '../app/controllers/application_controller'
require_relative '../app/controllers/auxiliary_controller'
require_relative '../app/controllers/model_controller'
require_relative '../app/models/first_model'
