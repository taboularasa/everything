require 'spec_helper'

describe "containers/show" do
  before(:each) do
    @container = assign(:container, stub_model(Container))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
