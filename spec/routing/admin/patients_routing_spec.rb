require "spec_helper"

describe Admin::PatientsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/patients").should route_to("admin/patients#index")
    end

    it "routes to #new" do
      get("/admin/patients/new").should route_to("admin/patients#new")
    end

    it "routes to #show" do
      get("/admin/patients/1").should route_to("admin/patients#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/patients/1/edit").should route_to("admin/patients#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/patients").should route_to("admin/patients#create")
    end

    it "routes to #update" do
      put("/admin/patients/1").should route_to("admin/patients#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/patients/1").should route_to("admin/patients#destroy", :id => "1")
    end

  end
end
