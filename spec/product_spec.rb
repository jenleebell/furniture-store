require 'spec_helper'

describe Product do
  # validations

  before { @customer = Customer.create({ firstname: 'John', lastname: 'Johnson' }) }
  before { @order    = Order.create({ customer_id: @customer.id, total: 50 }) }
  before { @product =  Product.create({ price: 10, name: 'Product', description: 'description', order_id: @order.id }) }

  it 'returns false if the name is blank' do
    product =  Product.create({ price: 10, name: '', description: 'description', order_id: @order.id})
    expect(Product.all.count).to eq 1
  end

  it 'returns false if the description is blank' do
    product =  Product.create({ price: 10, name: 'name', description: '', order_id: @order.id})
    expect(Product.all.count).to eq 1
  end

  it 'returns false if the price is blank' do
    product =  Product.create({ price: '', name: 'name', description: 'description', order_id: @order.id})
    expect(Product.all.count).to eq 1
  end

end
