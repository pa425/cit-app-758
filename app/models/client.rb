class Client < ActiveRecord::Base

	has_many :topics
	has_many :users, :through => :userprivileges
	
  attr_accessible :firstName, :isMale, :lastName  
  
end
