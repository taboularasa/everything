require 'spec_helper'

describe "consumables/new" do
  before(:each) do
    assign(:consumable, stub_model(Consumable).as_new_record)
  end

  it "renders new consumable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consumables_path, :method => "post" do
    end
  end
end
