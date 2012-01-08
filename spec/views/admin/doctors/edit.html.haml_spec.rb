require 'spec_helper'

describe "admin/doctors/edit.html.haml" do
  before(:each) do
    @admin_doctor = assign(:admin_doctor, stub_model(Admin::Doctor,
      :code => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :designation => "MyString",
      :cell => "MyString",
      :phone => "MyString",
      : => "",
      :address2 => "MyString",
      :postal => "MyString",
      :city => "MyString",
      :state => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit admin_doctor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_doctors_path(@admin_doctor), :method => "post" do
      assert_select "input#admin_doctor_code", :name => "admin_doctor[code]"
      assert_select "input#admin_doctor_first_name", :name => "admin_doctor[first_name]"
      assert_select "input#admin_doctor_last_name", :name => "admin_doctor[last_name]"
      assert_select "input#admin_doctor_designation", :name => "admin_doctor[designation]"
      assert_select "input#admin_doctor_cell", :name => "admin_doctor[cell]"
      assert_select "input#admin_doctor_phone", :name => "admin_doctor[phone]"
      assert_select "input#admin_doctor_", :name => "admin_doctor[]"
      assert_select "input#admin_doctor_address2", :name => "admin_doctor[address2]"
      assert_select "input#admin_doctor_postal", :name => "admin_doctor[postal]"
      assert_select "input#admin_doctor_city", :name => "admin_doctor[city]"
      assert_select "input#admin_doctor_state", :name => "admin_doctor[state]"
      assert_select "input#admin_doctor_user_id", :name => "admin_doctor[user_id]"
    end
  end
end
