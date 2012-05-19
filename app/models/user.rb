class User < ActiveRecord::Base

	has_many :messages
	has_many :topics
	has_many :clients, :through => :userprivileges
	
  attr_accessible :email, :firstName, :lastName, :username
  
end
