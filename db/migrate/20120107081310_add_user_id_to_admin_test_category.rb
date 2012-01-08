class AddUserIdToAdminTestCategory < ActiveRecord::Migration
  def self.up
    add_column :admin_test_categories, :user_id, :integer
  end

  def self.down
    remove_column :admin_test_categories, :user_id
  end
end
