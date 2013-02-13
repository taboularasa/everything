require 'spec_helper'

describe "softwares/edit" do
  before(:each) do
    @software = assign(:software, stub_model(Software))
  end

  it "renders the edit software form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => softwares_path(@software), :method => "post" do
    end
  end
end
