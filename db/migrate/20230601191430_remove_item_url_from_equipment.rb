class RemoveItemUrlFromEquipment < ActiveRecord::Migration[7.0]
  def change
    remove_column :equipment, :item_url, :string
  end
end
