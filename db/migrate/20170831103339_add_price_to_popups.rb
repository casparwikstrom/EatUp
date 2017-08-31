class AddPriceToPopups < ActiveRecord::Migration[5.1]
  def change
    add_monetize :popups, :price, currency: { present: false }
  end
end
