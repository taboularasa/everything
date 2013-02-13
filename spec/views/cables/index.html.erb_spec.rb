require 'spec_helper'

describe "cables/index" do
  before(:each) do
    assign(:cables, [
      stub_model(Cable),
      stub_model(Cable)
    ])
  end

  it "renders a list of cables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
