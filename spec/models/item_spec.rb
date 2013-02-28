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
