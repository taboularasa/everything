require 'spec_helper'

describe "softwares/show" do
  before(:each) do
    @software = assign(:software, stub_model(Software))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
