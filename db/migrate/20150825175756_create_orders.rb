class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.column :total, :money
      t.timestamps
    end
  end
end
