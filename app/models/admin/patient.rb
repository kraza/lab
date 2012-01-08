class Admin::Patient < ActiveRecord::Base
  belongs_to :admin_doctor

  attr_accessor :doctor

  def admin_doctor
    @doctor = Admin::Doctor.find(self.admin_doctor_id)
  end

end
