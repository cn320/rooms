class ReservesController < ApplicationController
  #Show all reserve list
  def index
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @reserves = Reserve.find(:all, :order => "date_to_reserve")
      @roomtype = DetailRoom.all_types
      @time = Room.all_times
      @day_list = Room.all_days
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @reserves }
      end
    end
  end

  
  # show one reserve and form data
  def show
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @reserf = Reserve.find(params[:id])
      @roomtype = DetailRoom.all_types
      @time = Room.all_times
      @day_list = Room.all_days
      @form = Form.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @reserf }
      end
    end
  end

  # GET /reserves/new
  # GET /reserves/new.json
  def new
=begin
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @time.push("All Free Time")
    @day_list = Room.all_days
    @room = Room.find(params[:id])
    @reserf = Reserve.new
    @timescope = ["08.00-09.30","09.30-11.00","11.00-12.30","13.30-15.00"]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserf }
    end
=end
  end

  # GET /reserves/1/edit
  def edit
   # @reserf = Reserve.find(params[:id])
  end

  # POST /reserves
  # POST /reserves.json
  def create
=begin    temp = params[:reserf]
    temp["roomname"] = params[:room]["roomname"]
    @reserf = Reserve.new(temp)
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    respond_to do |format|
      if @reserf.save
        format.html { redirect_to result_path(@reserf), notice: 'Reserve was successfully created.' }
        format.json { render json: @reserf, status: :created, location: @reserf }
      else
        format.html { render action: "new" }
        format.json { render json: @reserf.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PUT /reserves/1
  # PUT /reserves/1.json
  def update
#    @reserf = Reserve.find(params[:id])

#    respond_to do |format|
 #     if @reserf.update_attributes(params[:reserf])
  #      format.html { redirect_to @reserf, notice: 'Reserve was successfully updated.' }
  #      format.json { head :no_content }
  #    else
   #     format.html { render action: "edit" }
    #    format.json { render json: @reserf.errors, status: :unprocessable_entity }
    #  end
   # end
  end

  #delete reserve and form (same id)
  def destroy
    if session[:admin] == nil
      redirect_to rooms_path
    else
      @reserf = Reserve.find(params[:id])
      @reserf.destroy
      @roomtype = DetailRoom.all_types
      @time = Room.all_times
      @day_list = Room.all_days
      @form = Form.find(params[:id])
      @form.destroy
      respond_to do |format|
        format.html { redirect_to reserves_path, notice: 'Reserve was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end


end
