class AddUsernameToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :username, :string
  end

  def self.down
    remove_column :customers, :username
  end
end
