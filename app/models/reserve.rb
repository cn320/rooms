class Reserve < ActiveRecord::Base
  attr_accessible  :date_to_reserve, :email, :roomname, :start_time, :finish_time,:status, :tel


  validates :date_to_reserve,  :presence => true
  validates :email,  :presence => true
  validates :roomname,  :presence => true
  validates :start_time,  :presence => true
  validates :finish_time,  :presence => true
  validates :tel,  :presence => true

 
end
