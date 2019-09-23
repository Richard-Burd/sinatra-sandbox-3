require 'pry'
# Per this lesson here:
# https://learn.co/tracks/full-stack-web-development-v7/sinatra/forms/sinatra-nested-forms
# This model will utilize a nested hash to pass parameters into (and get info out of) this
# class model below:
class SecondModel
  attr_accessor :name, :first_number, :second_number

  def initialize(args)
    @name = args["second_object"]["name"]
    @first_number = args["second_object"]["calc_values"]["first_number"]
    @second_number = args["second_object"]["calc_values"]["second_number"]
  end

  def calculator
    self.first_number.to_i * self.second_number.to_i
  end
end

# These values are to test the model above, the hash below is the format of the params hash that needs to be passed to this object
# hash = {"second_object"=>{"name"=>"Alvin", "calc_values"=>{"first_number"=>"12", "second_number"=>"3"}}}

# x = SecondModel.new(hash)
# x.name
# x.first_number
# x.second_number
