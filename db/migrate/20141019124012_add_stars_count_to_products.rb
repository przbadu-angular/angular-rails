class AddStarsCountToProducts < ActiveRecord::Migration
  def up
    add_column :products, :stars_count, :integer, :default => 0

    Product.reset_column_information
    Product.all.each do |product|
    	p.update_attribute :stars_count, product.stars.length
    end
  end

  def down
  	remove_column :products, :stars_count
  end
end
