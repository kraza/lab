require "spec_helper"

describe Admin::TestsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/tests").should route_to("admin/tests#index")
    end

    it "routes to #new" do
      get("/admin/tests/new").should route_to("admin/tests#new")
    end

    it "routes to #show" do
      get("/admin/tests/1").should route_to("admin/tests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/tests/1/edit").should route_to("admin/tests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/tests").should route_to("admin/tests#create")
    end

    it "routes to #update" do
      put("/admin/tests/1").should route_to("admin/tests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/tests/1").should route_to("admin/tests#destroy", :id => "1")
    end

  end
end
