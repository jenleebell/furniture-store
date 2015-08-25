require 'spec_helper'
require 'pry'

describe Order do

  before { @customer = Customer.create({firstname: 'Bob', lastname: 'Bobson'}) }
  before { @order = Order.create({customer_id: @customer.id, total: 650 }) }
  before { @product  = Product.create({price: 50.00, name: 'Thingy', description: 'A thing-like thing.', order_id: @order.id})}
  before { @product  = Product.create({price: 50.00, name: 'Stuff', description: 'A stuff-like thing.', order_id: @order.id})}
  describe 'fullname' do
    it "returns the fullname of the customer" do
      expect(@customer.fullname).to eq 'bob bobson'
    end
  end

  it("ensures the length of a firstname or lastname is at most 20 characters") do
    customer = Customer.new({:firstname => "Maximilliandecemberoflcopterus", :lastname => "Smith"})
    expect(customer.save()).to(eq(false))
  end

  it "returns false if firstname or lastname is blank" do
    customer = Customer.new({:firstname => "", :lastname => ""})
    expect(customer.save()).to(eq(false))
  end
end
