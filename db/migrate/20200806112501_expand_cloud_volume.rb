class ExpandCloudVolume < ActiveRecord::Migration[5.2]
  def change
    add_reference :cloud_volumes, :storage_resource, :type => :bigint, :index => true
    add_reference :cloud_volumes, :storage_service, :type => :bigint, :index => true
    add_column :cloud_volumes, :compliant, :boolean
    add_column :cloud_volumes, :volume_source, :string
  end
end
