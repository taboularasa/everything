# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category    :string(255)
#  description :text
#  properties  :hstore
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  barcode     :decimal(, )
#

class Item < ActiveRecord::Base
  attr_accessible :category, :description, :name, :barcode, :author
  serialize :properties, ActiveRecord::Coders::Hstore
  hstore_accessor :properties, :author
end
