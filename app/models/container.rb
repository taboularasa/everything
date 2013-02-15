# == Schema Information
#
# Table name: containers
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  parent_id   :integer
#  name        :string(255)
#  description :text
#  barcode     :integer
#

class Container < ActiveRecord::Base
  acts_as_tree
  has_many :items
  attr_accessible :name
  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :barcode, presence: true, numericality: true, uniqueness: true
end
