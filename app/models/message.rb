class Message < ActiveRecord::Base

  belongs_to :topic
  belongs_to :user
  
  attr_accessible :body
  
end
