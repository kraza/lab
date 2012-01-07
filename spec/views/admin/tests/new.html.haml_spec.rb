require 'spec_helper'

describe "admin/tests/new.html.haml" do
  before(:each) do
    assign(:admin_test, stub_model(Admin::Test,
      :category_id => 1,
      :code => "MyString",
      :name => "MyString",
      :fees => "9.99",
      :commission_type => "MyString",
      :commissin_value => "9.99"
    ).as_new_record)
  end

  it "renders new admin_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_tests_path, :method => "post" do
      assert_select "input#admin_test_category_id", :name => "admin_test[category_id]"
      assert_select "input#admin_test_code", :name => "admin_test[code]"
      assert_select "input#admin_test_name", :name => "admin_test[name]"
      assert_select "input#admin_test_fees", :name => "admin_test[fees]"
      assert_select "input#admin_test_commission_type", :name => "admin_test[commission_type]"
      assert_select "input#admin_test_commissin_value", :name => "admin_test[commissin_value]"
    end
  end
end
