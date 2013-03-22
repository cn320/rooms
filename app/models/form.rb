class Form < ActiveRecord::Base
 attr_accessible :amount_of_people, :because, :date_to_reserve, :email, :finish_time, :institution, :name, :position, :require_tool, :roomname, :roomtype, :start_time, :subject, :surname, :tel

  validates :position,  :presence => true 
  validates :name,  :presence => true, :length => { :minimum => 3 }
  validates :surname,  :presence => true, :length => { :minimum => 3 }
  validates :institution,  :presence => true
  validates :tel,  :presence => true
  validates :roomtype,  :presence => true
  validates :roomname,  :presence => true
  validates :date_to_reserve,  :presence => true
  validates :start_time,  :presence => true
  validates :finish_time,  :presence => true
  validates :because,  :presence => true
  validates :subject,  :presence => true
  validates :amount_of_people,  :presence => true

  validates :email,  :presence => true

  
end
