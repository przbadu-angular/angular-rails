class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :market_price, default: 0.0
      t.float :selling_price, default: 0.0
      t.integer :stock_qty, default: 0
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
