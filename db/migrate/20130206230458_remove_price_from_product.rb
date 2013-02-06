class RemovePriceFromProduct < ActiveRecord::Migration
  def up
    remove_column :products, :price
  end

  def down
    add_column :products, :price, :decimal, :precision => 8, :scale => 2
  end
end
