class Product < ActiveRecord::Base
  belongs_to :orders

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
