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
#  in_use       :boolean
#

class Game < Item
  %w[booklet_id amazon isbn publisher platform].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end

  validates :publisher, presence: true
  validates :platform, presence: true
  validates :amazon, numericality: true, allow_nil: true
  validates :isbn, numericality: true, allow_nil: true
end
