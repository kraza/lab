require 'spec_helper'

describe "admin/tests/index.html.haml" do
  before(:each) do
    assign(:admin_tests, [
      stub_model(Admin::Test,
        :category_id => 1,
        :code => "Code",
        :name => "Name",
        :fees => "9.99",
        :commission_type => "Commission Type",
        :commissin_value => "9.99"
      ),
      stub_model(Admin::Test,
        :category_id => 1,
        :code => "Code",
        :name => "Name",
        :fees => "9.99",
        :commission_type => "Commission Type",
        :commissin_value => "9.99"
      )
    ])
  end

  it "renders a list of admin/tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Commission Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
