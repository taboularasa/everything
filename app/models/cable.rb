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

class Cable < Item
  %w[connector_type length color last_working].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end

  validates :connector_type, presence: true
  validates :length, presence: true, :numericality => true
  validates :color, presence: true
end
