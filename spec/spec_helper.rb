ENV['RACK_ENV'] = 'test'

require 'pg'
require 'sinatra/activerecord'
require './lib/customer'
require './lib/order'
require './lib/product'

RSpec.configure do |config|
  config.after(:each) do
    Product.all.each do |p|
      p.destroy
    end
    Customer.all.each do |c|
      c.destroy
    end
    Order.all.each do |o|
      o.destroy
    end
  end
end
