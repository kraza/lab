require 'spec_helper'

describe "admin/patients/edit.html.haml" do
  before(:each) do
    @admin_patient = assign(:admin_patient, stub_model(Admin::Patient,
      :refrence_no => "MyString",
      :initial_name => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :admin_doctor_id => 1,
      :total_amount => "9.99",
      :advance_payment => "9.99",
      :is_doctor_received_payment => false
    ))
  end

  it "renders the edit admin_patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_patients_path(@admin_patient), :method => "post" do
      assert_select "input#admin_patient_refrence_no", :name => "admin_patient[refrence_no]"
      assert_select "input#admin_patient_initial_name", :name => "admin_patient[initial_name]"
      assert_select "input#admin_patient_first_name", :name => "admin_patient[first_name]"
      assert_select "input#admin_patient_last_name", :name => "admin_patient[last_name]"
      assert_select "input#admin_patient_admin_doctor_id", :name => "admin_patient[admin_doctor_id]"
      assert_select "input#admin_patient_total_amount", :name => "admin_patient[total_amount]"
      assert_select "input#admin_patient_advance_payment", :name => "admin_patient[advance_payment]"
      assert_select "input#admin_patient_is_doctor_received_payment", :name => "admin_patient[is_doctor_received_payment]"
    end
  end
end
