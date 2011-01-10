class CreateSomeBooks < ActiveRecord::Migration
  def self.up
    Book.new(:bookTitle => 'Ruby Sprookjes',
             :author => 'RVB', 
             :publisher => 'FairyTales',
             :genre_id => 3,
             :description => 'Wonderlijke gebeurtenissen in de Ruby wereld.',
             :customerId => 1).save

    Book.new(:bookTitle => 'Ruby Nachtmerries',
             :author => 'RVB',
             :publisher => 'Killer',
             :genre_id => 1,
             :description => 'Frustrerende gebeurtenissen in de Ruby wereld.',
             :customerId => 1).save
  end

  def self.down
    #Book deleten
  end
end