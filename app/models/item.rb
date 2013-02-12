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

class Item < ActiveRecord::Base
  attr_accessible :title, :category, :description, :barcode, :container_id
  validates :title, presence: true
  validates :barcode, presence: true, uniqueness: true
end
