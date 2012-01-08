require 'spec_helper'

describe "Admin::Patients" do
  describe "GET /admin_patients" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get admin_patients_path
      response.status.should be(200)
    end
  end
end
