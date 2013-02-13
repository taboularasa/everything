require "spec_helper"

describe PowerSuppliesController do
  describe "routing" do

    it "routes to #index" do
      get("/power_supplies").should route_to("power_supplies#index")
    end

    it "routes to #new" do
      get("/power_supplies/new").should route_to("power_supplies#new")
    end

    it "routes to #show" do
      get("/power_supplies/1").should route_to("power_supplies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/power_supplies/1/edit").should route_to("power_supplies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/power_supplies").should route_to("power_supplies#create")
    end

    it "routes to #update" do
      put("/power_supplies/1").should route_to("power_supplies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/power_supplies/1").should route_to("power_supplies#destroy", :id => "1")
    end

  end
end
