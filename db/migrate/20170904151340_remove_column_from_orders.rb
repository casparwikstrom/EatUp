class RemoveColumnFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :amount, :integer
    remove_column :orders, :popup_sku, :string
  end
end
