class CreateCustomer < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.column :firstname, :string
      t.column :lastname, :string, index: true
    end
  end
end
