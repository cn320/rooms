class StaticPagesController < ApplicationController
  def about
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
  end
end
