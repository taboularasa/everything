require 'spec_helper'

describe "consumables/index" do
  before(:each) do
    assign(:consumables, [
      stub_model(Consumable),
      stub_model(Consumable)
    ])
  end

  it "renders a list of consumables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
