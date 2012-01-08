require 'spec_helper'

describe "admin/patients/index.html.haml" do
  before(:each) do
    assign(:admin_patients, [
      stub_model(Admin::Patient,
        :refrence_no => "Refrence No",
        :initial_name => "Initial Name",
        :first_name => "First Name",
        :last_name => "Last Name",
        :admin_doctor_id => 1,
        :total_amount => "9.99",
        :advance_payment => "9.99",
        :is_doctor_received_payment => false
      ),
      stub_model(Admin::Patient,
        :refrence_no => "Refrence No",
        :initial_name => "Initial Name",
        :first_name => "First Name",
        :last_name => "Last Name",
        :admin_doctor_id => 1,
        :total_amount => "9.99",
        :advance_payment => "9.99",
        :is_doctor_received_payment => false
      )
    ])
  end

  it "renders a list of admin/patients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Refrence No".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Initial Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
