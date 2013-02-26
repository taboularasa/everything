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

require 'spec_helper'

describe Consumable do
  pending "add some examples to (or delete) #{__FILE__}"
end
