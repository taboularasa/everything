require 'spec_helper'

describe "cables/new" do
  before(:each) do
    assign(:cable, stub_model(Cable).as_new_record)
  end

  it "renders new cable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cables_path, :method => "post" do
    end
  end
end
