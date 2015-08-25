class Customer < ActiveRecord::Base
  has_many :orders

  validates(:firstname, {:presence => true, :length => { :maximum => 20 }})
  validates(:lastname, {:presence => true, :length => { :maximum => 20 }})



  def fullname
    self.firstname + " " + self.lastname
  end
end
