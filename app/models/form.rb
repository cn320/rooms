class Form < ActiveRecord::Base
  attr_accessible :amount_of_people, :because, :date_to_reserve, :email, :finish_time, :institution, :name, :position, :require_tool, :roomname, :roomtype, :start_time, :subject, :surname, :tel
  
  def self.all_positions
    ["teacher","official","student","other"]
  end

  def self.all_require_tools
    ["amplifier","microphone","computer","overhead_projector","lcd_projector","television","voice_recorder","video_recorder","visualizer"]
  end

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

  def self.find_result_submit(roomname,date,start,finish)
    forms = Form.find_all_date_to_reserve(date)
    forms.each do |f|
      if f.roomname==roomname && f.start_time == start && f.finish_time == finish
        return f
      end
    end
  end
end
