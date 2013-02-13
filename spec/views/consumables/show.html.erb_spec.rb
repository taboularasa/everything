require 'spec_helper'

describe "consumables/show" do
  before(:each) do
    @consumable = assign(:consumable, stub_model(Consumable))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
