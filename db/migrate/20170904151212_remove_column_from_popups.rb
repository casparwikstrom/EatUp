class RemoveColumnFromPopups < ActiveRecord::Migration[5.1]
  def change
    remove_column :popups, :sku, :string
    remove_column :popups, :price, :integer
  end
end
