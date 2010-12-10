class AddBioToCustomer < ActiveRecord::Migration
  def self.up
    add_column :customers, :bio, :text
  end

  def self.down
    remove_column :customers, :bio
  end
end
