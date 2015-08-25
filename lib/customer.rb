class Customer < ActiveRecord::Base
  has_many :orders

  def fullname
    self.firstname + " " + self.lastname
  end
end
