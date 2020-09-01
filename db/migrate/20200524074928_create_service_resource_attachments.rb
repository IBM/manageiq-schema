class CreateServiceResourceAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :service_resource_attachments do |t|
      t.references :storage_service, :type => :bigint, :index => true, :references => :storage_service
      t.references :storage_resource, :type => :bigint, :index => true, :references => :storage_resource
      t.boolean :compliant
      t.bigint :ems_id
      t.string :ems_ref

      t.timestamps
    end
  end
end
