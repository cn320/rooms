class StaffsController < ApplicationController
  
  # Staff index page, welcome staff
  def index
    if session[:admin] == nil
      redirect_to rooms_path
    else  
      @roomtype = DetailRoom.all_types
      @admin = session[:admin]
      @time = Room.all_times
      @time.push("All Free Time")
      @day_list = Room.all_days
    end
  end

  #show DetailRoom (1room 7day) (Staff only)
  def show
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @time.push("All Free Time")
    @day_list = Room.all_days
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @droom = DetailRoom.find(params[:id])
      @rooms = Room.find_all_by_roomname(@droom.roomname)
    end
  
  end

 
  def new
   
  end

  
  def edit
    if session[:admin] == nil
      redirect_to rooms_path
    else   
      @room = Room.find(params[:id])
    end
   
  end

 
  def create
 
  end

 
  def update
  
  end

  
  def destroy
   
  end
  
  #login page
  def login
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @time.push("All Free Time")
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
    @time.push("All Free Time")
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
