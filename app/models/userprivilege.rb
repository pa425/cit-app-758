class Userprivilege < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  attr_accessible :privilegeLevel
end
