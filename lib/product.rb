class Product < ActiveRecord::Base
  belongs_to :orders
end
