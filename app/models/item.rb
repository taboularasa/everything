# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  category    :string(255)
#  description :text
#  properties  :hstore
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  barcode     :decimal(, )
#  type        :string(255)
#

class Item < ActiveRecord::Base
  attr_accessible :category, :description, :name, :barcode
  serialize :properties, ActiveRecord::Coders::Hstore
end
