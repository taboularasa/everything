class ChangeBarcodeTypeInItems < ActiveRecord::Migration
  def change
    change_column :items, :barcode, :integer
  end
end
