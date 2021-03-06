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

class PowerSupply < Item
  %w[input output amp_rating input_connector output_connector].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end

  validates :input, presence: true, numericality: true
  validates :output, presence: true, numericality: true
  validates :amp_rating, presence: true, numericality: true
  validates :input_connector, presence: true
  validates :output_connector, presence: true
end
