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

class Item < ActiveRecord::Base
  belongs_to :container
  attr_accessible :title, :category, :description, :barcode, :container_id, :properties
  serialize :properties, ActiveRecord::Coders::Hstore
  validates :title, presence: true
  validates :barcode, presence: true, uniqueness: true, numericality: true
  validates :container_id, presence: true, numericality: true
end
