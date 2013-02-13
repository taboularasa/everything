require 'spec_helper'

describe "softwares/index" do
  before(:each) do
    assign(:softwares, [
      stub_model(Software),
      stub_model(Software)
    ])
  end

  it "renders a list of softwares" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
