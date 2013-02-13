require 'spec_helper'

describe "peripherals/show" do
  before(:each) do
    @peripheral = assign(:peripheral, stub_model(Peripheral))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
