require 'spec_helper'

describe "containers/edit" do
  before(:each) do
    @container = assign(:container, stub_model(Container))
  end

  it "renders the edit container form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => containers_path(@container), :method => "post" do
    end
  end
end
