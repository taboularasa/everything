require 'spec_helper'

describe "power_supplies/edit" do
  before(:each) do
    @power_supply = assign(:power_supply, stub_model(PowerSupply))
  end

  it "renders the edit power_supply form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => power_supplies_path(@power_supply), :method => "post" do
    end
  end
end
