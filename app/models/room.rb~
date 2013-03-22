class Room < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :roomname, :first, :second, :third, :fourth, :fifth, :sixth, :day, :seventh, :eighth
  
  def self.all_times
    ["8.00-9.30","9.30-11.00", "11.00-12.30","12.30-13.00","13.30-15.00","15.00-16.30","16.30-18.00","18.00-21.00"]
  end

  def self.time_to_section
    ["8.00-9.30"=>"first","9.30-11.00"=>"second", "11.00-12.30"=>"third","12.30-13.00"=>"fourth","13.30-15.00"=>"fifth","15.00-16.30"=>"sixth","16.30-18.00"=>"seventh","18.00-21.00"=>"eighth"]
  end

  def self.all_days
    ["monday","tuesday","wednesday","thursday","friday","saturday","sunday"]
  end

  

  def self.to_date(arr)
    str = arr["year"]+"-"+arr["month"]+"-"+arr["day"]
    return Date.parse str
  end
  
 
  def self.find_with_day_sec(obj,day,sec)
    free_day = obj
    free_result = []
    free_day.each_with_index do |item,i|
      if free_day[i]["day"] == day && free_day[i][sec] == "free"
        free_result.push(free_day[i])
      end
    end
    return free_result
  end

  def self.find_with_datetime(obj,date,start,finish)
    free_result = []
    obj.each_with_index do |room,i|
        reserf = Reserve.find_all_by_roomname(obj[i]["roomname"])
        if reserf == [] || reserf == nil
          free_result.push(obj[i])
        else
          flag = true
          reserf.each_with_index do |r,j|
            if reserf[j]["date_to_reserve"].to_s == date
              if reserf[j]["start_time"].to_s == start.to_s && reserf[j]["finish_time"].to_s == finish.to_s
                flag = false
              end
            end
          end
          if flag == true
            free_result.push(obj[i])
          end
        end    
      end
      return free_result
  end

 

  def self.find_with_amount(free,amount)
    max = 0
    free_result = []
    free.sort_by! {|i| DetailRoom.find_by_roomname(i.roomname).amount}
    free.each do |i|
      s = DetailRoom.find_by_roomname(i["roomname"]).amount
      if free_result.count!=0 && s>max 
        break 
      end
      if s >= amount.to_i
        free_result.push(i)
        max = s
      end
    end
    return free_result
  end
end
