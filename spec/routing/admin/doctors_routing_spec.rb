require "spec_helper"

describe Admin::DoctorsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/doctors").should route_to("admin/doctors#index")
    end

    it "routes to #new" do
      get("/admin/doctors/new").should route_to("admin/doctors#new")
    end

    it "routes to #show" do
      get("/admin/doctors/1").should route_to("admin/doctors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/doctors/1/edit").should route_to("admin/doctors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/doctors").should route_to("admin/doctors#create")
    end

    it "routes to #update" do
      put("/admin/doctors/1").should route_to("admin/doctors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/doctors/1").should route_to("admin/doctors#destroy", :id => "1")
    end

  end
end
