require 'spec_helper'

describe "containers/index" do
  before(:each) do
    assign(:containers, [
      stub_model(Container),
      stub_model(Container)
    ])
  end

  it "renders a list of containers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
