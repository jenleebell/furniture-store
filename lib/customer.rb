class Customer < ActiveRecord::Base
  has_many :orders

  validates(:firstname, {:presence => true, :length => { :maximum => 20 }})
  validates(:lastname, {:presence => true, :length => { :maximum => 20 }})
  before_save(:downcase_firstname)
  before_save(:downcase_lastname)




  def fullname
    self.firstname + " " + self.lastname
  end

private

  def downcase_firstname
    self.firstname=(firstname().downcase())
  end

  def downcase_lastname
    self.lastname=(lastname().downcase())
  end

end
