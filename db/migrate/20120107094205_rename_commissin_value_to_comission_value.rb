class RenameCommissinValueToComissionValue < ActiveRecord::Migration
  def self.up
    rename_column :admin_tests, :commissin_value, :comission_value
  end

  def self.down
    rename_column :admin_tests, :comission_value, :commissin_value
  end
end
