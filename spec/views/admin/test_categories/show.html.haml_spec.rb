require 'spec_helper'

describe "admin/test_categories/show.html.haml" do
  before(:each) do
    @admin_test_category = assign(:admin_test_category, stub_model(Admin::TestCategory,
      :name => "Name",
      :description => "MyText",
      :is_active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
