class ModelController < Sinatra::Base

  # by default, Sinatra will look for the views in the following directory:
  # sinatra-sandbox-3/app/controllers/views/index.erb
  # I do not want this because I want a folder breakdown wherein
  # Models, Views, and Controllers are all of the same scope.
  # This line customizes where Sinatra will look for the views:
  set :views, "app/views"

  get '/model/first' do
    @model_1_new = FirstModel.new
    @model_1_new.text = (params[:user_text])
  	erb :first_model_viewer
  end

  post '/model/first/reply' do

    # this will show us the hash values of the params hash produced by sinatra
    # when the user enters data into the form at the URL above: '/form' :
    params.to_s #=> {"name"=>"Tom", "age"=>"23"}

    "The test of the model is: #{params[:modeltext]} "
  end

end
