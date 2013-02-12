# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  category     :string(255)
#  description  :text
#  properties   :hstore
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  barcode      :integer
#  type         :string(255)
#  container_id :integer
#

class Book < Item
  #attr_accessible :barcode, :title
  serialize :properties, ActiveRecord::Coders::Hstore
  %w[author publisher isbn amazon pages].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end
  #hstore_accessor :properties, :author, :amazon, :isbn, :publisher, :pages
  validates :author, presence: true

end
