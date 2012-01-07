class CreateAdminTestCategories < ActiveRecord::Migration
  def self.up
    create_table :admin_test_categories do |t|
      t.string :name
      t.text :description
      t.boolean :is_active, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_test_categories
  end
end
