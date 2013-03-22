class StaffsController < ApplicationController
  
  # Staff index page, welcome staff
  def index
    if session[:admin] == nil
      redirect_to rooms_path
    else  
      @roomtype = DetailRoom.all_types
      @admin = Staff.find_by_username(session[:admin])
      @time = Room.all_times
      @day_list = Room.all_days
    end
  end

  #show DetailRoom (1room 7day) (Staff only)
  def show
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @droom = DetailRoom.find(params[:id])
      @rooms = Room.find_all_by_roomname(@droom.roomname)
      #@rooms = Room.map_days_to_thai(@rooms)
      @room_tool = Tool.find_by_roomname(@droom.roomname)
    end
  
  end

 
  def new
   
  end

  
  def edit
  
  end

 
  def create
 
  end

  #reset all room data
  def update
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    @rooms = Room.all
    @rooms.each do |room|
      r={}
      r["roomname"] = room.roomname
      r["first"] = "free"
      r["second"] = "free"
      r["third"] = "free"
      r["fourth"] = "free"
      r["fifth"] = "free"
      r["sixth"] = "free"
      r["seventh"] = "free"
      r["eighth"] = "free"
      r["day"] = room.day
      room.update_attributes!(r)
    end
    redirect_to staffs_path
     
  end

  
  def destroy
    
  end
  
  #login page
  def login
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    if session[:admin] != nil
      redirect_to staffs_path
    end    
  end

  #login and go to staff index
  def submit
    @user = params[:staff]
    @uname = Staff.find_by_username(@user["username"])
  
    if @user["username"]=="" || @uname == nil || @uname.password != @user["password"]
      flash[:notice] = "can not login"
      redirect_to login_path
    else
      session[:admin] = @uname.username
      flash[:notice] = "login successfully"
      redirect_to staffs_path
    end
  end
  
  #logout
  def logout
    session[:admin] = nil
    redirect_to rooms_path
  end

  #show list for DetailRoom
  def room_list
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    if session[:admin] == nil
      redirect_to rooms_path
    end
    @admin = session[:admin]
    @rooms = {} 
    @roomtype.each do |type|
      @rooms[type] = DetailRoom.find_all_by_room_type(type)
    end 
  end

end
