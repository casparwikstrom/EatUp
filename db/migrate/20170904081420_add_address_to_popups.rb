class AddAddressToPopups < ActiveRecord::Migration[5.1]
  def change
    add_column :popups, :address, :string
    add_column :popups, :latitude, :float
    add_column :popups, :longitude, :float
  end
end
