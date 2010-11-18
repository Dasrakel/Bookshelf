class AddCustomerIdToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :customerId, :string
  end

  def self.down
    remove_column :books, :customerId
  end
end
