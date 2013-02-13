require 'spec_helper'

describe "peripherals/edit" do
  before(:each) do
    @peripheral = assign(:peripheral, stub_model(Peripheral))
  end

  it "renders the edit peripheral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => peripherals_path(@peripheral), :method => "post" do
    end
  end
end
