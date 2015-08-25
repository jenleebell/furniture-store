class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.column :price, :money
      t.column :name, :string
      t.column :description, :string
      t.column :order_id, :int
    end
  end
end
