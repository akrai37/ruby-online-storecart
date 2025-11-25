class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_email
      t.text :customer_address
      t.decimal :total, precision: 10, scale: 2
      t.text :items_json

      t.timestamps
    end
  end
end
