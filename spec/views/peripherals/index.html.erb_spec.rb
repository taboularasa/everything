require 'spec_helper'

describe "peripherals/index" do
  before(:each) do
    assign(:peripherals, [
      stub_model(Peripheral),
      stub_model(Peripheral)
    ])
  end

  it "renders a list of peripherals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
