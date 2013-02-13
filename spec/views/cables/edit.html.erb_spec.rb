require 'spec_helper'

describe "cables/edit" do
  before(:each) do
    @cable = assign(:cable, stub_model(Cable))
  end

  it "renders the edit cable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cables_path(@cable), :method => "post" do
    end
  end
end
