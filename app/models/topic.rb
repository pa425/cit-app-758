class Topic < ActiveRecord::Base

	has_many :messages
  belongs_to :client
  belongs_to :user
  
  attr_accessible :body, :numMsgs, :title
end
