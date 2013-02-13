require 'spec_helper'

describe "computers/show" do
  before(:each) do
    @computer = assign(:computer, stub_model(Computer))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
