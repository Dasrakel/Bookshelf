class FillDbWithDummydata < ActiveRecord::Migration
  def self.up
  	  
  	  #In order to add books we need a customer who adds them, password "123123"
  	  #Customer.new(
  	  #	  :email => 'rick.van.boxstael@howest.be',
  	  #	  :encrypted_password => '$2a$10$Yx5cOmFyzEaRN.f1qOr2JONGt9EGolMumJM3hweuMJ/E7jSpqJN/y',
  	  #	  :password_salt => '$2a$10$Yx5cOmFyzEaRN.f1qOr2JO',
  	  #	  :sign_in_count => 1,
  	  #	  :current_sign_in_at => '2011-01-10',
  	  #	  :last_sign_in_at => '2011-01-10 ',
  	  #	  :current_sign_in_ip => '127.0.0.1',
  	  #	  :last_sign_in_ip => '127.0.0.1',
  	  #	  :created_at => '2011-01-10',
  	  #	  :updated_at => '2011-01-10',
  	  #	  :username => 'Rick',
  	  #	  :admin => 'f',
  	  #	  :bio => 'vanalles').save

  	  	  
    Book.new(:bookTitle => 'Ruby Sprookjes',
             :author => 'RVB', 
             :publisher => 'FairyTales',
             :genre_id => 3,
             :description => 'Wonderlijke gebeurtenissen in de Ruby wereld.',
             :customerId => 1
             ).save

    Book.new(:bookTitle => 'Ruby Nachtmerries',
             :author => 'RVB',
             :publisher => 'Killer',
             :genre_id => 1,
             :description => 'Frustrerende gebeurtenissen in de Ruby wereld.',
             :customerId => 1
             ).save
  end

  def self.down
  end
end
