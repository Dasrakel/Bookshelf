class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.integer :bookId
      t.String :bookTitle
      t.String :author
      t.String :publisher
      t.String :isbn
      t.String :description

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
