class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :product_id
      t.integer :rating

      t.timestamps
    end
  end
end
