# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


    Customer.create(
          :id => 1,
  	 	    :email => 'rick.van.boxstael@howest.be',
  	  	  :encrypted_password => '$2a$10$Yx5cOmFyzEaRN.f1qOr2JONGt9EGolMumJM3hweuMJ/E7jSpqJN/y',
  	  	  :password_salt => '$2a$10$Yx5cOmFyzEaRN.f1qOr2JO',
  	  	  :sign_in_count => 1,
  	  	  :current_sign_in_at => '2011-01-10',
  	  	  :last_sign_in_at => '2011-01-10 ',
  	  	  :current_sign_in_ip => '127.0.0.1',
  	 	    :last_sign_in_ip => '127.0.0.1',
  	  	  :created_at => '2011-01-10',
  	  	  :updated_at => '2011-01-10',
  	  	  :username => 'Rick',
  	  	  :admin => 'f',
  	  	  :bio => 'vanalles')
Customer.create(
    :id => 2,
  	 	    :email => 'cedric.devriendt@howest.be',
  	  	  :encrypted_password => '$2a$10$Yx5cOmFyzEaRN.f1qOr2JONGt9EGolMumJM3hweuMJ/E7jSpqJN/y',
  	  	  :password_salt => '$2a$10$Yx5cOmFyzEaRN.f1qOr2JO',
  	  	  :sign_in_count => 1,
  	  	  :current_sign_in_at => '2011-01-10',
  	  	  :last_sign_in_at => '2011-01-10 ',
  	  	  :current_sign_in_ip => '127.0.0.1',
  	 	    :last_sign_in_ip => '127.0.0.1',
  	  	  :created_at => '2011-01-10',
  	  	  :updated_at => '2011-01-10',
  	  	  :username => 'Cedric',
  	  	  :admin => 'f',
  	  	  :bio => 'Bam bam')


Book.delete_all
    Book.create(:bookTitle => 'Ruby Sprookjes',
             :author => 'RVB',
             :publisher => 'FairyTales',
             :genre_id => 3,
             :description => 'Wonderlijke gebeurtenissen in de Ruby wereld.',
             :customerId => 1
             )

    Book.create(:bookTitle => 'Ruby Nachtmerries',
             :author => 'RVB',
             :publisher => 'Killer',
             :genre_id => 1,
             :description => 'Frustrerende gebeurtenissen in de Ruby wereld.',
             :customerId => 1
             )
Book.create(:bookTitle => 'Het mysterieuze osi project',
             :author => 'Cedric',
             :publisher => 'Moortgat',
             :genre_id => 2,
             :description => 'Rare omwentelingen in een project waarbij 4 dappere ridders iets in elkaar moeten flansen.',
             :customerId => 2
             )
Book.create(:bookTitle => 'De afwas die blijkbaar zichzelf niet doet',
             :author => 'Cedric',
             :publisher => 'Kejt',
             :genre_id => 1,
             :description => 'Het stapelen en wegsteken van de afwas is niet de oplossing voor propere borden en glazen.',
             :customerId => 2
             )