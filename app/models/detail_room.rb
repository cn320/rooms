class DetailRoom < ActiveRecord::Base
  attr_accessible :roomname, :amount
  attr_writer  :amount
end
