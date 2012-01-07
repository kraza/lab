class Admin::TestCategory < ActiveRecord::Base
  has_many :tests
end
