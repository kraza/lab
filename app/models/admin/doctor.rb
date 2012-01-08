class Admin::Doctor < ActiveRecord::Base

  has_many :admin_patients

  validates :code, :first_name, :designation, :cell, :presence => true
  #validates :email, :email => true
  validates :email, :presence => true, :uniqueness => true#, :email_format => true
end
