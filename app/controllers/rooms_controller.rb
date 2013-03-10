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
      if Room.find_by_room_id(room["room_id"]) == nil
        @room = Room.new(params[:room])
        respond_to do |format|
          if @room.save
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
    
  end

  def search_result
    @admin = session[:admin]
    room = params[:room]
    size = room["volume"]
    all_avai = Room.find_all_by_status("available")
    all_avai.sort_by! {|i| i.volume }
    @rooms=[]
    max = size.to_i
    all_avai.each do |room|
      if @rooms != [] && room.volume > max
        break
      end
      if size.to_i <= room.volume
        @rooms.push(room)
        max = room.volume
      end
    end
    if (room["room_id"]=="" && room["volume"]=="")
      #flash[:notice] = "please insert room name or volume"
      @rooms = all_avai
      #redirect_to search_path
    end
    if @rooms.length == 0
      flash[:notice] = "Not found"
      redirect_to search_path
    else
    end
  end

end
