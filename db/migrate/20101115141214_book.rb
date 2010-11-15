class Book < ActiveRecord::Migration
  def self.up
	remove_column :books, :bookId
  end

  def self.down
	add_column :books, :bookId, :integer
  end
end
