require 'pry'
# This filename application_controller.rb is a convention

# The name ApplicationController is also a convention
class ApplicationController < Sinatra::Base

  # https://learn.co/tracks/full-stack-web-development-v7/sinatra/sessions/mechanics-of-sessions?batch_id=306&track_id=50152
  # IMPORTANT: You should never set your session_secret by hand, and especially not to something so trivially simple as "secret"! We are doing this for the sake of demonstration this one time. You are advised to learn more about how to secure your sessions by following the [Using Sessions][secsin] documentation at the Sinatra home.
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/hey' do
    @session = session

    # if you go into binding.pry & type "@session" you will get this hash:
    # => {"session_id"=>"41ccdc9cf080392552f517283a4e7ea17c9e34a74d9a8c668cd4c2bc77b49e55",
    #     "csrf"=>"3tT7bvxbJ3kR03PB5YWWJgXJWas5+xnKuIg8Qo59p8c=",
    #     "tracking"=>{"HTTP_USER_AGENT"=>"ed63febfa774fcc7c9bdeef5810593add38300bd"}}
  end

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

  # when naming routes such as 'index' or 'info' the names of these routes
  # cannot begin with a number such as "/info/2nd"
  get '/index' do
    # you can write the name of the erb file with quotes...
    # erb :'index'

    # ...or without quotes...it doesn't matter
  	erb :index
  end

  get '/info' do
  	erb :info
  end

  # This is a sample dynamic route.
  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "The resulting number is #{@product}"
  end

  get '/form' do
  	erb :'new_form'
  end

  # This is a sample reply
  post '/reply' do

    # this will show us the hash values of the params hash produced by sinatra
    # when the user enters data into the form at the URL above: '/form' :
    params.to_s #=> {"name"=>"Tom", "age"=>"23"}

    "Thank you #{params[:name]} for filling out the form, your string is: #{params.to_s}"
  end

  get "/tools" do
    @tools = ['screwdriver', 'drill', 'hammer']

    erb :'tools_list', :layout => :'alt_layout'
  end

end
