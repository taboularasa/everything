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

require 'spec_helper'

describe Container do
  pending "add some examples to (or delete) #{__FILE__}"
end
