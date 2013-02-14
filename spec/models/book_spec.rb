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

require 'spec_helper'

describe Book do
  before { FactoryGirl.create(:book) }
  subject { @book }

  it { should respond_to(:id) }
  it { should respond_to(:container_id) }
  it { should respond_to(:title) }
  it { should respond_to(:amazon) }
  it { should respond_to(:isbn) }
  it { should respond_to(:publisher) }
  it { should respond_to(:pages) }
  it { should respond_to(:author) }
  it { should respond_to(:title) }

  it { should be_valid }
end
