class CreateServiceResourceAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :service_resource_attachments do |t|
      t.references :storage_service, :type => :bigint, :index => true
      t.references :storage_resource, :type => :bigint, :index => true
      t.boolean :compliant
      t.references :ems, :type => :bigint, :index => true, :references => :ext_management_system
      t.string :ems_ref

      t.timestamps
    end
  end
end
