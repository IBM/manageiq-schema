class CreateStorageServices < ActiveRecord::Migration[5.2]
  def change
    create_table :storage_services do |t|
      t.string :name
      t.string :description
      t.bigint :project_id
      t.bigint :profile_id
      t.string :uuid
      t.bigint :version
      t.references :parent_service, :type => :bigint, :index => true, :references => :storage_service
      t.string :capability_values
      t.references :ems, :type => :bigint, :index => true, :references => :ext_management_system
      t.string :ems_ref

      t.timestamps
    end
  end
end
