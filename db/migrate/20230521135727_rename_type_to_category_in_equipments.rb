class RenameTypeToCategoryInEquipments < ActiveRecord::Migration[7.0]
  def change
    rename_column :equipment, :type, :category
  end
end
