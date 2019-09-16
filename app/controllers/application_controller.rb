# This filename application_controller.rb is a convention

# The name ApplicationController is also a convention
class ApplicationController < Sinatra::Base 

  # this is a root route and a GET request.
  get '/' do 
  	"This is the App Controller" 
  end 

end 