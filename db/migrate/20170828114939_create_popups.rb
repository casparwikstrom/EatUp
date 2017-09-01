class CreatePopups < ActiveRecord::Migration[5.1]
  def change
    create_table :popups do |t|
      t.string :title
      t.string :url
      t.string :status, default: "pending"
      t.integer :funding_goal
      t.integer :amount_pledged
      t.date :deadline
      t.integer :seat_capacity
      t.string :category
      t.string :address
      t.text :description
      t.date :launch_date
      t.integer :price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
