class Room < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :roomname, :volume,  :first, :second, :third, :fourth, :fifth, :sixth, :day, :seventh, :eighth

  def self.all_sections
    ["8.00-9.30","9.30-11.00", "11.00-12.30","12.30-13.00","13.30-15.00","15.00-16.30","16.30-18.00","18.00-21.00"]
  end

  def self.all_days
    ["monday","tuesday","wednesday","thursday","friday","saturday","sunday"]
  end
end
