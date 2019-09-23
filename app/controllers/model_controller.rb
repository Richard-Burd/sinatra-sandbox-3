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
    "The text of the model is: #{params[:modeltext]} "
  end

  # when naming routes such as 'index' or 'model' the names of these routes
  # cannot begin with a number such as "/model/2nd"
  get '/model/second' do
    erb :second_model_nested_views
  end

  post '/model/second/reply' do
    @model = SecondModel.new(params)
    "Thank you, #{@model.name}, the second model has calculated a value of #{@model.calculator}; this was done by passing a nested params hash into the object model called 'second_model_nested.rb' located in the ./app/models directory"
  end
end
