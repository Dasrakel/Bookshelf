class   Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 

  # Setup accessible (or protected) attributes for your model
  attr_accessor :login
  attr_accessible :login, :email, :password, :password_confirmation, :remember_me, :username

  def self.find_for_database_authentication(conditions)
    value = conditions[authentication_keys.first]
    where(["username = :value OR email = :value", { :value => value }]).first
  end
  
  has_many :books
  
    
  #validation (opmk. emailadres wordt al gecontroleerd op uniekheid, username niet)
  validates :username, :uniqueness => true
  
  #validation /^(?=.*\d)(?=.*([a-z]|[A-Z]))([\x20-\x7E]){6,40}$/
  validates :password, :format => {
  	  :with => /^(?=.*\d)([\x20-\x7E]){6,40}$/,
  	  :message => 'should contain atleast one integer.' + "\n natuurlijk"
  }
  validates :password, :format => {
  	  :with => /^(?=.*([a-z]|[A-Z]))([\x20-\x7E]){6,40}$/,
  	  :message => 'should contain atleast one alphabet(either in downcase or upcase).'
  }
end
