class Product < ActiveRecord::Base
  attr_accessible :category, :description, :name, :price, :author

  def author
    properties && properties["author"]
  end

  def author=(value)
    self.properties = (properties || {}).merge("author" => value)
  end
end
