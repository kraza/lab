class CreateAdminPatients < ActiveRecord::Migration
  def self.up
    create_table :admin_patients do |t|
      t.string :refrence_no
      t.string :initial_name
      t.string :first_name
      t.string :last_name
      t.integer :admin_doctor_id
      t.date :test_date
      t.date :test_delivery_date
      t.decimal :total_amount
      t.decimal :advance_payment
      t.boolean :is_doctor_received_payment

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_patients
  end
end
