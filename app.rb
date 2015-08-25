require('pg')
require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
require('./lib/customer')
require('./lib/product')
require('./lib/order')
also_reload('lib/**/*.rb')
# require 'pry'

after do
  ActiveRecord::Base.connection.close
end

get '/'  do
	erb(:index)
end

get '/products' do
	@products = Product.all
	erb :products
end

get '/products/new' do
	erb :product_create_form
end

get '/products/:id' do
	@product = Product.find(params['id'].to_i)
	erb :product
end


post '/products' do
	price = params['price']
	name = params['name']
	description = params['description']
	Product.create(name: name, price: price, description: description)
	redirect '/products'
end

get '/products/:id/edit' do
	@product = Product.find(params['id'].to_i)
	erb :product_edit_form
end

patch '/products/:id' do
	product = Product.find(params['id'])
	name = params['name']
	price = params['price']
	description = params['description']
	product.update(name: name, price: price, description: description)
	redirect '/products'
end
