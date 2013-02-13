require 'spec_helper'

describe "consumables/edit" do
  before(:each) do
    @consumable = assign(:consumable, stub_model(Consumable))
  end

  it "renders the edit consumable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consumables_path(@consumable), :method => "post" do
    end
  end
end
