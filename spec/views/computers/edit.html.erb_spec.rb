require 'spec_helper'

describe "computers/edit" do
  before(:each) do
    @computer = assign(:computer, stub_model(Computer))
  end

  it "renders the edit computer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => computers_path(@computer), :method => "post" do
    end
  end
end
