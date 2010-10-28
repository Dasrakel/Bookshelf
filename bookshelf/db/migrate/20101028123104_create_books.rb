class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.Integer :bookId
      t.string :author
      t.string :title
      t.string :publisher
      t.Integer :genreId
      t.datetime :dateAdded
      t.Integer :totalPages
      t.Integer :imageId

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
