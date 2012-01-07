require "spec_helper"

describe Admin::TestCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/test_categories").should route_to("admin/test_categories#index")
    end

    it "routes to #new" do
      get("/admin/test_categories/new").should route_to("admin/test_categories#new")
    end

    it "routes to #show" do
      get("/admin/test_categories/1").should route_to("admin/test_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/test_categories/1/edit").should route_to("admin/test_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/test_categories").should route_to("admin/test_categories#create")
    end

    it "routes to #update" do
      put("/admin/test_categories/1").should route_to("admin/test_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/test_categories/1").should route_to("admin/test_categories#destroy", :id => "1")
    end

  end
end
