class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/bikes' do
    bikes = Bike.by_lowest_price
    bikes.to_json
  end

  get '/bikes/:id' do
    bike = Bike.find(params[:id])
    bike.to_json
  end

  get '/users' do
    users = User.all
    users.to_json(include: :bikes)
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json(include: :bikes)
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      rating: params[:rating]
    )
    user.to_json(include: :bikes)
  end

  post '/bikes' do
    bike = Bike.create(
      name: params[:name],
      brand: params[:brand],
      terrain: params[:terrain],
      condition: params[:condition],
      price: params[:price],
      user_id: params[:user_id],
      image: params[:image]
    )
    bike.to_json
  end

  patch '/bikes/:id' do
    bike = Bike.find(params[:id])
    bike.update(
      price: params[:price]
    )
    bike.to_json
  end

  delete '/bikes/:id' do
    bike = Bike.find(params[:id])
    bike.destroy
    bike.to_json
  end

end
