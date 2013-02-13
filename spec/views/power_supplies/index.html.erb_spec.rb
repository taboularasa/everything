require 'spec_helper'

describe "power_supplies/index" do
  before(:each) do
    assign(:power_supplies, [
      stub_model(PowerSupply),
      stub_model(PowerSupply)
    ])
  end

  it "renders a list of power_supplies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
