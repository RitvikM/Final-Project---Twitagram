class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates_presence_of :username
validates_presence_of :email
validates_presence_of :password

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
	
	#new edit
	has_many :posts, :order => "created_at DESC"
  
  has_many :friendships  
  has_many :friends, :through => :friendships  
	
  end
