class Book < Item
  attr_accessible :category, :description, :barcode, :author
  serialize :properties, ActiveRecord::Coders::Hstore
  hstore_accessor :properties, :author
end
