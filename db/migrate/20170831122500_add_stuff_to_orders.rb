class AddStuffToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :state, :string
    add_column :orders, :popup_sku, :string
    add_column :orders, :amount_cents, :integer
    add_column :orders, :payment, :json
  end
end
