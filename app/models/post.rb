class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments, :order => "created_at DESC"
	validates_presence_of :title, :on => :create, :message => "can't be blank"
	validates_attachment_presence :photo
	
	has_attached_file :photo,
 :styles => {
  
  	 :thumb=> ["100x100", :png],
     :small  => ["150x150>",:png],
     :medium => ["300x300>",:png],
     :large =>   ["550x550>",:png]
	 
	
	
	},
	
	 :storage => :s3,
     :s3_credentials => "#{Rails.root}/config/s3.yml",
     :path => "/:style/:id/:filename"
	
	#:styles => { :medium => "300x300>", :thumb => "100x100>" }
	
	
	
end
