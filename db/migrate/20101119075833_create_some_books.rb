class CreateSomeBooks < ActiveRecord::Migration
  def self.up
    #Dummy data:
    Book.new(:bookTitle => 'Ruby Sprookjes',
             :author => 'RVB', 
             :publisher => 'STANDAARD',
             :description => 'Wonderlijke gebeurtenissen in de Ruby wereld.').save
    Book.new(:bookTitle => 'Ruby Nachtmerries',
             :author => 'RVB',
             :publisher => 'STANDAARD',
             :description => 'Frustrerende gebeurtenissen in de Ruby wereld.').save
  end

  def self.down
    #Book deleten
  end
end