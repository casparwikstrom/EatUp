class AddColumnsToWishlist < ActiveRecord::Migration[5.1]
  def change
    add_column :wishlists, :name, :string
    add_column :wishlists, :category, :string
  end
end
