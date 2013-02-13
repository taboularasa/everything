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

class Software < Item
  %w[version publisher].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end
  validates :version, presence: true
  validates :publisher, presence: true
end
