require 'spec_helper'

describe "softwares/new" do
  before(:each) do
    assign(:software, stub_model(Software).as_new_record)
  end

  it "renders new software form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => softwares_path, :method => "post" do
    end
  end
end
