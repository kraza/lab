class CreateAdminDoctors < ActiveRecord::Migration
  def self.up
    create_table :admin_doctors do |t|
      t.string :code
      t.string :first_name
      t.string :last_name
      t.string :designation
      t.string :cell
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :postal
      t.string :city
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_doctors
  end
end
