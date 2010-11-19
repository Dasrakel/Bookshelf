class CreateGenres < ActiveRecord::Migration
  def self.up
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end

    Genre.new(:name => 'Drama').save
    Genre.new(:name => 'Thriller').save
    Genre.new(:name => 'Romantic').save
    Genre.new(:name => 'Fantasy').save

  end

  def self.down
    drop_table :genres
  end
end
