# This filename application_controller.rb is a convention

# The name ApplicationController is also a convention
class ApplicationController < Sinatra::Base

  # by default, Sinatra will look for the views in the following directory:
  # sinatra-sandbox-3/app/controllers/views/index.erb
  # I do not want this because I want a folder breakdown wherein
  # Models, Views, and Controllers are all of the same scope.
  # This line customizes where Sinatra will look for the views:
  set :views, "app/views"

  # this is a root route and a GET request.
  get '/' do
  	"This is the App Controller"
  end

  get '/index' do
  	erb :'index'
  end

  get '/info' do
  	erb :'info'
  end

  # This is a sample dynamic route.
  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "The resulting number is #{@product}"
  end

end
