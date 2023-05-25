class AddItemPicUrlToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :item_url, :string
  end
end
