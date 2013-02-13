require "spec_helper"

describe PeripheralsController do
  describe "routing" do

    it "routes to #index" do
      get("/peripherals").should route_to("peripherals#index")
    end

    it "routes to #new" do
      get("/peripherals/new").should route_to("peripherals#new")
    end

    it "routes to #show" do
      get("/peripherals/1").should route_to("peripherals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/peripherals/1/edit").should route_to("peripherals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/peripherals").should route_to("peripherals#create")
    end

    it "routes to #update" do
      put("/peripherals/1").should route_to("peripherals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/peripherals/1").should route_to("peripherals#destroy", :id => "1")
    end

  end
end
