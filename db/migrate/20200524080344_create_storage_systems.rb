class CreateStorageSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :storage_systems do |t|
      t.string :management_ip
      t.string :name
      t.string :secondary_ip
      t.string :storage_array
      t.string :storage_family
      t.references :storage_system_type, :type => :bigint, :index => true
      t.string :uuid
      t.references :ems, :type => :bigint, :index => true, :references => :ext_management_system
      t.string :ems_ref

      t.timestamps
    end
  end
end
