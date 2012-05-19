class Temporaryaccount < ActiveRecord::Base
  belongs_to :client
  attr_accessible :email
end
