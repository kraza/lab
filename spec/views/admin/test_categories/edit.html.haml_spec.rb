require 'spec_helper'

describe "admin/test_categories/edit.html.haml" do
  before(:each) do
    @admin_test_category = assign(:admin_test_category, stub_model(Admin::TestCategory,
      :name => "MyString",
      :description => "MyText",
      :is_active => false
    ))
  end

  it "renders the edit admin_test_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_test_categories_path(@admin_test_category), :method => "post" do
      assert_select "input#admin_test_category_name", :name => "admin_test_category[name]"
      assert_select "textarea#admin_test_category_description", :name => "admin_test_category[description]"
      assert_select "input#admin_test_category_is_active", :name => "admin_test_category[is_active]"
    end
  end
end
