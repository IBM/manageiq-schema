class AddUuidToPhysicalStorages < ActiveRecord::Migration[5.0]
  def change
    add_column :physical_storages, :uuid, :string
    add_column :physical_storages, :storage_family, :string
  end
end

