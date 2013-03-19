class Reserve < ActiveRecord::Base
  attr_accessible  :date_to_reserve, :email, :roomname, :start_time, :finish_time,:status, :tel


  validates :date_to_reserve,  :presence => true
  validates :email,  :presence => true
  validates :roomname,  :presence => true
  validates :start_time,  :presence => true
  validates :finish_time,  :presence => true
  validates :tel,  :presence => true

  def self.find_all_with_date_time(roomname,date,time)
    time = time.split("-")
    free_result = []
    reserf = Reserve.find_all_by_roomname(roomname)
    reserf.each_with_index do |r,i|
      if r.date != date || r.start_time != time[0]
        free_result.push(r)
      end
    end
    return free_result
  end

  def self.find_with_date_time(date,time,obj)
    time = time.split("-")
    free_room = []
    obj.each_with_index do |room,i|
     
    end     
  end
end
