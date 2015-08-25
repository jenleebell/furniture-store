require 'spec_helper'

describe Order do

  before { @customer = Customer.create({firstname: 'Bob', lastname: 'Bobson'}) }

  describe 'fullname' do
    it "returns the fullname of the customer" do
      expect(@customer.fullname).to eq 'Bob Bobson'
    end
  end
end
