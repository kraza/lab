require 'spec_helper'

describe "admin/test_categories/index.html.haml" do
  before(:each) do
    assign(:admin_test_categories, [
      stub_model(Admin::TestCategory,
        :name => "Name",
        :description => "MyText",
        :is_active => false
      ),
      stub_model(Admin::TestCategory,
        :name => "Name",
        :description => "MyText",
        :is_active => false
      )
    ])
  end

  it "renders a list of admin/test_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
