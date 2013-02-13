require 'spec_helper'

describe "computers/new" do
  before(:each) do
    assign(:computer, stub_model(Computer).as_new_record)
  end

  it "renders new computer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => computers_path, :method => "post" do
    end
  end
end
