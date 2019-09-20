require 'spec_helper'

describe "GET '/index' - Main Index Page" do

it 'displays some basic text' do
  visit '/index'
  expect(page.body).to include("Welcome to the Index Page!")
end

end
