class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.decimal :price, :precision => 8, :scale => 2
      t.text :description
      t.hstore :properties

      t.timestamps
    end
  end
end
