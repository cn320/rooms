class DetailRoom < ActiveRecord::Base
  attr_accessible :roomname, :amount ,:type

  def self.all_types
    ["auditorium","classroom"]
  end


  validates :roomname,  :presence => true
  validates :amount,  :presence => true
  validates :type,  :presence => true
end
