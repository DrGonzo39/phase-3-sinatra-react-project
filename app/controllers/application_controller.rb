class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/bikes' do
    bikes = Bike.by_lowest_price
    bikes.to_json
  end

  get '/users/:id' do
    users = User.all
    users.to_json
  end
  

end
