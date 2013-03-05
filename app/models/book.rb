# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  category       :string(255)
#  description    :text
#  properties     :hstore
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  barcode        :integer
#  type           :string(255)
#  in_use         :boolean
#  due_date       :datetime
#  possessor_id   :integer
#  possessor_type :string(255)
#

class Book < Item
  %w[author publisher isbn amazon pages].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end

  #validates :author, presence: true
  validates :publisher, presence: true
  validates :isbn, presence: true
  #validates :amazon, numericality: true, allow_nil: true
  validates :pages, presence: true, numericality: true
end
