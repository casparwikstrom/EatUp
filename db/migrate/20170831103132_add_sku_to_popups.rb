class AddSkuToPopups < ActiveRecord::Migration[5.1]
  def change
    add_column :popups, :sku, :string
  end
end
