class AuxiliaryController < Sinatra::Base

  # by default, Sinatra will look for the views in the following directory:
  # sinatra-sandbox-3/app/controllers/views/index.erb
  # I do not want this because I want a folder breakdown wherein
  # Models, Views, and Controllers are all of the same scope.
  # This line customizes where Sinatra will look for the views:
  set :views, "app/views"
  
  # this is a root route and a GET request.
  get '/about' do
  	"This is the Aux Controller"
  end

end
