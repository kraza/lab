require 'spec_helper'

describe "admin/tests/show.html.haml" do
  before(:each) do
    @admin_test = assign(:admin_test, stub_model(Admin::Test,
      :category_id => 1,
      :code => "Code",
      :name => "Name",
      :fees => "9.99",
      :commission_type => "Commission Type",
      :commissin_value => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Commission Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
