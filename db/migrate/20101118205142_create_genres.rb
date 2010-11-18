class CreateGenres < ActiveRecord::Migration
  def self.up
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end

    Genre.new(:name => 'Arts & Photography').save
    Genre.new(:name => 'Biographies & Memoirs').save
    Genre.new(:name => 'Business & Investing').save
    Genre.new(:name => 'Calendars').save
    Genre.new(:name => 'Children Books').save
    Genre.new(:name => 'Comics & Graphic Novels').save
    Genre.new(:name => 'Computers & Internet').save
    Genre.new(:name => 'Cooking, Food & Wine').save
    Genre.new(:name => 'Entertainment').save
    Genre.new(:name => 'Gay & Lesbian').save
    Genre.new(:name => 'Health, Mind & Body').save
    Genre.new(:name => 'History ').save
    Genre.new(:name => 'Home & Garden').save
    Genre.new(:name => 'Law ').save
    Genre.new(:name => 'Literature & Fiction').save
    Genre.new(:name => 'Medicine').save
    Genre.new(:name => 'Mystery & Thrillers').save
    Genre.new(:name => 'Nonfiction ').save
    Genre.new(:name => 'Outdoors & Nature ').save
    Genre.new(:name => 'Parenting & Families ').save
    Genre.new(:name => 'Professional & Technical ').save
    Genre.new(:name => 'Reference ').save
    Genre.new(:name => 'Religion & Spirituality ').save
    Genre.new(:name => 'Romance ').save
    Genre.new(:name => 'Science ').save
    Genre.new(:name => 'Science Fiction & Fantasy').save
    Genre.new(:name => 'Sports ').save
    Genre.new(:name => 'Teens ').save
    Genre.new(:name => 'Travel ').save




  end

  def self.down
    drop_table :genres
  end
end
