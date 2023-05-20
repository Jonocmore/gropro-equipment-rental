class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :type
      t.string :name
      t.string :location
      t.integer :quantity
      t.integer :price
      t.integer :rented
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
