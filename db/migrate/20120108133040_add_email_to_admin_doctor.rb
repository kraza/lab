class AddEmailToAdminDoctor < ActiveRecord::Migration
  def self.up
    add_column :admin_doctors, :email, :string
  end

  def self.down
    remove_column :admin_doctors, :email
  end
end
