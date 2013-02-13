require 'spec_helper'

describe "peripherals/new" do
  before(:each) do
    assign(:peripheral, stub_model(Peripheral).as_new_record)
  end

  it "renders new peripheral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => peripherals_path, :method => "post" do
    end
  end
end
