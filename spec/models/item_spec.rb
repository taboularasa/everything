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

describe Item do
  let(:item) { FactoryGirl.create(:item) }
  let(:container) { FactoryGirl.create(:container) }
  let(:user) { FactoryGirl.create(:user) }

  subject { item }

  it { should respond_to(:title) }
  it { should respond_to(:category) }
  it { should respond_to(:description) }
  it { should respond_to(:barcode) }
  it { should respond_to(:properties) }
  it { should respond_to(:type) }
  it { should be_valid }

  describe "when added to a container" do
    before { item.update_attributes( :possessor => container ) }

    its(:possessor) { should == container }

    describe "when changing possesor" do
      subject { item }
      before do
        item.possessor = user
        item.save
      end
      its(:possessor) { should == user }
    end
  end

end
