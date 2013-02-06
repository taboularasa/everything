class AddBarcodeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :barcode, :decimal
  end
end
