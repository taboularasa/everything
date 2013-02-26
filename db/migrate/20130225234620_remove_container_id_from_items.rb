class RemoveContainerIdFromItems < ActiveRecord::Migration
  def up
    remove_column :items, :container_id
  end

  def down
    add_column :items, :container_id, :integer
  end
end
