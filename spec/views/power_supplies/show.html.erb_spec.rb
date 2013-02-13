require 'spec_helper'

describe "power_supplies/show" do
  before(:each) do
    @power_supply = assign(:power_supply, stub_model(PowerSupply))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
