class Staff < ActiveRecord::Base
  attr_accessible :username
  attr_accessible :password,:firstname,:lastname
end
