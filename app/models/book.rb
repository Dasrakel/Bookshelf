class Book < ActiveRecord::Base
  require 'risbn/gdata'
  def getIsbn
     RISBN::GData(self.isbn).data
  end

  belongs_to :genre
  belongs_to :customer
  
  #validation
  validates :bookTitle, :author, :publisher, :description, :presence => true
end
