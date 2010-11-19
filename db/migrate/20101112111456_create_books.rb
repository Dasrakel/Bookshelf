class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.integer :bookId
      t.string :bookTitle
      t.string :author
      t.string :publisher
      t.string :isbn
      t.string :description

      t.timestamps
    end
    
  end

  def self.down
    drop_table :books
  end
end
