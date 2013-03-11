class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @room = Room.find(params[:id])

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
      @section = Room.all_times
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
      @room = Room.find(params[:id])
    end
  end

  # POST /rooms
  # POST /rooms.json
  def create
    if session[:admin] == nil
      redirect_to rooms_path
    else
      room = params[:room]
      if Room.find_by_roomname(room["roomname"]) == nil
        room = []
        day_list = Room.all_days
        temp_room = room
        temp_room["amount"] = params[:detail_rooms].to_i
        @detail_room_obj = DetailRoom.new(temp_room)     
        all_time = Room.all_times
        day_list.each do |d|
          room["roomname"] = params[:room]["roomname"]
          room["day"] = d
          day = params[day]
          all_time.each do |t|
            val = day[t]
            if val == 1
              room[t] = "free"
            else
              room[t] = "busy"
            end
          end
          @room_obj = Room.new(room)
          respond_to do |format|
            if !@room_obj.save
              format.html { render action: "new" }
              format.json { render json: @room.errors, status: :unprocessable_entity }
            end
          end
        end
        respond_to do |format|
      if @detail_room_obj.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render json: @room, status: :created, location: @room }
      else
        format.html { render action: "new" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
      else
        flash[:notice] = "can not add new room"
        redirect_to new_room_path
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @room = Room.find(params[:id])
      respond_to do |format|
        if @room.update_attributes(params[:room])
          format.html { redirect_to staff_path(@room.id), notice: 'Room was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: staff_path(@room.id).errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @room = Room.find(params[:id])
      @room.destroy

      respond_to do |format|
        format.html { redirect_to staffs_path, notice: 'Room was successfully deleted.'  }
        format.json { head :no_content }
      end
    end
  end
  
  
  def search
  @time = Room.all_times
  @time.push("All Free Time")
  @day_list = Room.all_days
  end

  def search_result
    @admin = session[:admin]
    room = params[:room]
    avai_in_day = Room.find_all_by_day(room["day"])
    if room["section"]!="All Free Time"
      avai_in_day = avai_in_day.find_all{|i| i[room["section"]]=="free"}
    end
    avai_in_day.sort_by! {|i| i.volume }
    @rooms=[]
    if room["volume"]==""
      @rooms =  Room.find_all_by_day(room["day"])
    else
      size=room["volume"]
      max=30
      avai_in_day.each do |room|
        amount = DetailRoom.find_by_roomname(room.roomname)
 
        if @rooms != [] && amount > max
          break
        end
        if size.to_i <= amount
          @rooms.push(room)
          max = amount
        end
      end
    end
  end

end
