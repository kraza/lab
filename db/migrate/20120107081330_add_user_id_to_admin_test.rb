class AddUserIdToAdminTest < ActiveRecord::Migration
  def self.up
    add_column :admin_tests, :user_id, :integer
  end

  def self.down
    remove_column :admin_tests, :user_id
  end
end
