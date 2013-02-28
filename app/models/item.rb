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

class Item < ActiveRecord::Base
  belongs_to :possessor, :polymorphic => true
  attr_accessible :title, :category, :description, :barcode, :properties, :type, :possessor
  serialize :properties, ActiveRecord::Coders::Hstore
  validates :title, presence: true
  validates :barcode, presence: true, uniqueness: true, numericality: true

end
