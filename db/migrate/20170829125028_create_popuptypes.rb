class CreatePopuptypes < ActiveRecord::Migration[5.1]
  def change
    create_table :popuptypes do |t|
      t.references :type, foreign_key: true
      t.references :popup, foreign_key: true

      t.timestamps
    end
  end
end
