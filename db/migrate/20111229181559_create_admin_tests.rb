class CreateAdminTests < ActiveRecord::Migration
  def self.up
    create_table :admin_tests do |t|
      t.integer :category_id
      t.string :code
      t.string :name
      t.decimal :fees, :precision => 6, :scale => 2
      t.string :commission_type
      t.decimal :commissin_value, :precision => 6, :scale => 2
      t.boolean :is_active, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_tests
  end
end
