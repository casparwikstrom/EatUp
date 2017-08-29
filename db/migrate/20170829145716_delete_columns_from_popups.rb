class DeleteColumnsFromPopups < ActiveRecord::Migration[5.1]
  def change
    remove_column :popups, :address
    remove_column :popups, :start_date
    remove_column :popups, :end_date
    remove_column :popups, :launch_date
    remove_column :popups, :category
  end
end
