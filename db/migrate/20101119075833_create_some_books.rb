class CreateSomeBooks < ActiveRecord::Migration
  def self.up
    #Dummy data:
    Book.new(:bookTitle => 'Ruby Sprookjes',
             :author => 'RVB', 
             :publisher => 'STANDAARD',
             :genre_id => 3,
             :description => 'Wonderlijke gebeurtenissen in de Ruby wereld.').save
    Book.new(:bookTitle => 'Ruby Nachtmerries',
             :author => 'RVB',
             :publisher => 'STANDAARD',
             :genre_id => 1,
             :description => 'Frustrerende gebeurtenissen in de Ruby wereld.').save
  end

  def self.down
    #Book deleten
  end
end