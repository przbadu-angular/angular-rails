class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.string :title
      t.text :review
      t.string :name

      t.timestamps
    end
  end
end
