require 'spec_helper'

describe "computers/index" do
  before(:each) do
    assign(:computers, [
      stub_model(Computer),
      stub_model(Computer)
    ])
  end

  it "renders a list of computers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
