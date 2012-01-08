class Admin::Test < ActiveRecord::Base
  belongs_to :admin_test_category
  attr_accessor :admin_test_category


  validates :fees, :comission_value, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :category_id, :code, :name, :commission_type, :presence => true
  validates :code, :uniqueness => true


  def test_category
    @admin_test_category = Admin::TestCategory.find(self.category_id)
  end

  def commission_value
    if self.commission_type == "percentage"
      "#{self.comission_value.to_i}  %"
    else
      self.comission_value
    end
  end
end
