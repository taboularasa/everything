require "spec_helper"

describe ConsumablesController do
  describe "routing" do

    it "routes to #index" do
      get("/consumables").should route_to("consumables#index")
    end

    it "routes to #new" do
      get("/consumables/new").should route_to("consumables#new")
    end

    it "routes to #show" do
      get("/consumables/1").should route_to("consumables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consumables/1/edit").should route_to("consumables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consumables").should route_to("consumables#create")
    end

    it "routes to #update" do
      put("/consumables/1").should route_to("consumables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consumables/1").should route_to("consumables#destroy", :id => "1")
    end

  end
end
