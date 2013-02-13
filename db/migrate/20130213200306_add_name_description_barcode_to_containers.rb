class AddNameDescriptionBarcodeToContainers < ActiveRecord::Migration
  def change
    add_column :containers, :name, :string
    add_column :containers, :description, :text
    add_column :containers, :barcode, :integer
  end
end
