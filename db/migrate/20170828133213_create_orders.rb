class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :ordered_seats
      t.references :pledge, foreign_key: true
      t.references :user, foreign_key: true
      t.references :popup, foreign_key: true

      t.timestamps
    end
  end
end
