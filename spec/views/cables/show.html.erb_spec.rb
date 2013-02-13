require 'spec_helper'

describe "cables/show" do
  before(:each) do
    @cable = assign(:cable, stub_model(Cable))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
