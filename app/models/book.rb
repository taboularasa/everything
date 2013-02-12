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

class Book < Item
  attr_accessible :barcode, :title, :author, :amazon, :isbn, :publisher, :pages
  serialize :properties, ActiveRecord::Coders::Hstore
  hstore_accessor :properties, :author, :amazon, :isbn, :publisher, :pages
  validates :author, presence: true
end
