class CatController < Sinatra::Base

  # by default, Sinatra will look for the views in the following directory:
  # sinatra-sandbox-3/app/controllers/views/index.erb
  # I do not want this because I want a folder breakdown wherein
  # Models, Views, and Controllers are all of the same scope.
  # This line customizes where Sinatra will look for the views:
  set :views, "app/views"

  # this is a root route and a GET request.
  get '/cats' do
    @cats = Cat.all
    erb :'cats/cats'
  end

  get '/cats/new' do
    erb :'cats/create_cat'
  end

  post '/cats' do
    @cat = Cat.new(params[:cat])
    @cat.save
    redirect to "/cats"
  end

  get '/cats/:id' do
    "This is showing a specific cat"
  end

  get '/cats/:id/edit' do
    "This is showing a specific cat that you can edit"
  end

  delete '/cats/:id/delete' do
    "This is where a cat will be deleted"
  end

end
