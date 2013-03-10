class Room < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :roomname, :volume,  :first, :second, :third, :fourth, :fifth, :sixth, :day, :seventh, :eighth
end
