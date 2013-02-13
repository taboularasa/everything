require 'spec_helper'

describe "power_supplies/new" do
  before(:each) do
    assign(:power_supply, stub_model(PowerSupply).as_new_record)
  end

  it "renders new power_supply form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => power_supplies_path, :method => "post" do
    end
  end
end
