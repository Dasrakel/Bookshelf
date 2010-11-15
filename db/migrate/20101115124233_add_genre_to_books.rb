class AddGenreToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :genre, :String
  end

  def self.down
    remove_column :books, :genre
  end
end
