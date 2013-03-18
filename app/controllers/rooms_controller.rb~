class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
    @rooms.each do |room|
      size = DetailRoom.find_by_roomname(room.roomname).amount
      room["amount"] = size
    end
    @time = Room.all_times
    @time.push("All Free Time")
    @day_list = Room.all_days
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @admin = session[:admin]
    @room = Room.find(params[:id])
    @time = Room.all_times
    @time.push("All Free Time")
    @day_list = Room.all_days
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.json
  def new
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @box_times = Room.all_times
      @time = Room.all_times
      @time.push("All Free Time")
      @day_list = Room.all_days
      @room = Room.new
 
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @room }
      end
    end
  end

  # GET /rooms/1/edit
  def edit
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @droom = DetailRoom.find(params[:id])
      @rooms= Room.find_all_by_roomname(@droom.roomname)
      @time = Room.all_times
      @time.push("All Free Time")
      @day_list = Room.all_days
      @box_times = Room.time_to_section
    end
  end

  # POST /rooms
  # POST /rooms.json
  def create
    if session[:admin] == nil
      redirect_to rooms_path
    else
      droom = params[:room]
      if DetailRoom.find_by_roomname(droom["roomname"]) == nil
        droom["amount"] = params[:detail_rooms]["Amount"]
        @detail_room_obj = DetailRoom.new(droom)
        if @detail_room_obj.save
          all_day = Room.all_days
          all_times = Room.all_times
          time_to_section = Room.time_to_section
          all_day.each do |d|
            room = {}
            room["day"] = d
            all_times.each do |t|
              if params[d][t] == "1"
                room[time_to_section[0][t]] = "busy"
              else
                room[time_to_section[0][t]] = "free"
              end
            end
            room["roomname"] = params[:room]["roomname"]
            @room_obj = Room.new(room)
            @room_obj.save
          end
          flash[:notice] = "add new room successess"
          redirect_to staffs_path
        else
          flash[:notice] = "can not add new room"
          redirect_to staffs_path 
        end
      else
        flash[:notice] = "can not add new room"
        redirect_to staffs_path 
      end
    end
  end

 
  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @time = Room.all_times
      @time.push("All Free Time")
      @day_list = Room.all_days
      @box_times = Room.time_to_section
      @droom = DetailRoom.find(params[:id])
      old_name = DetailRoom.find(params[:id]).roomname
      #if DetailRoom.find_by_roomname(params[:droom]["roomname"]) == nil
      if true
        #@droom.update_attributes!(params[:droom])
        @day_list.each do |day|
          temp_room = {}
          temp_room["roomname"] = params[:droom]["roomname"]
          temp_room["day"] = day
          @box_times[0].each do |time|
            if params[day][time[1]] == "1"
              temp_room[time[1]] = "busy"
            else
              temp_room[time[1]] = "free"
            end
          end
          res = Room.find_all_by_roomname(old_name)
          @room = res.select do |r|  r.day == day  end
          @room[0].update_attributes!(temp_room)
          ##@room = temp_room
        end
        @droom.update_attributes!(params[:droom])
        flash[:notice] = "#{old_name} can update room---#{@room}"
        redirect_to staff_path(@droom)
      else
        flash[:notice] = "can not update room"
        redirect_to staffs_path
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @time = Room.all_times
      @time.push("All Free Time")
      @day_list = Room.all_days
      @droom = DetailRoom.find(params[:id])
      roomname = @droom.roomname
      @day_list.each do |day|
        @room = Room.find_all_by_roomname(@droom.roomname)
        @room = @room.select do |i| i.day==day end
        @room[0].destroy
      end
      @droom.destroy
      flash[:notice] = "Delete room #{roomname} success"
      redirect_to room_list_staffs_path
    end
  end
  
  
  def search
  @time = Room.all_times
  @time.push("All Free Time")
  @day_list = Room.all_days
  end

  def search_result
    @time = Room.all_times
    @time.push("All Free Time")
    @day_list = Room.all_days
    @time_select = Room.time_to_section[0][params[:section][0]]
    @day_select = params[:day][0]
    @size_select = params[:amount][0]
    @free_rooms = Room.find_all_by_day(@day_select)
    if @time_select != nil
      @free_rooms = Room.find_with_day_and_time(@day_select,@time_select)
    else 
      @time_select = "All Free Time"
    end
    if @size_select != ""
      @free_rooms = Room.find_with_amount(@free_rooms,@size_select)
    else
      @size_select = "Undefine"
    end
    @free_rooms.each do |room|
      size = DetailRoom.find_by_roomname(room.roomname).amount
      room["amount"] = size
    end
  end

  
end
