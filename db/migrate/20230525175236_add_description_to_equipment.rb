class AddDescriptionToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :description, :string
  end
end
