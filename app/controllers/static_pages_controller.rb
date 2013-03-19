class StaticPagesController < ApplicationController
  def about
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @time.push("All Free Time")
    @day_list = Room.all_days
  end
end
