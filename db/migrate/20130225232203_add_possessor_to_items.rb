class AddPossessorToItems < ActiveRecord::Migration
  def change
    add_column :items, :possessor_id, :integer
    add_column :items, :possessor_type, :string
  end
end
