class WelcomesController < ApplicationController
  #main page 
  def index
    @welcomes = Welcome.all
    @welcomes_choose = Welcome.find_all_by_choose(true)
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    @admin = session[:admin]
    if @admin == nil
      redirect_to rooms_path
    end
  end

  
  def show
    @welcome = Welcome.find(params[:id])
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    @admin = session[:admin]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @welcome }
    end
  end

  #Form add new pic
  def new
    @welcome = Welcome.new
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    @admin = session[:admin]
    if @admin == nil
      redirect_to rooms_path
    end
  end

  #Form Change state of pic
  def edit
    @welcome = Welcome.find(params[:id])
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    @admin = session[:admin]
    if @admin == nil
      redirect_to rooms_path
    end
  end

  # Create new pic
  def create
    temp_welcome = params[:welcome]
    temp_welcome["choose"] = 0
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    @admin = session[:admin]
    @welcome = Welcome.new(temp_welcome)
    respond_to do |format|
      if @welcome.save
        format.html { redirect_to welcomes_path, notice: 'Welcome was successfully created.' }
        format.json { render json: welcomes_path, status: :created, location: @welcome }
      else
        format.html { render action: "new" }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  #Edit state of pic
  def update
    @welcome = Welcome.find(params[:id])
    @roomtype = DetailRoom.all_types
    @time = Room.all_times
    @day_list = Room.all_days
    @admin = session[:admin]
    respond_to do |format|
      if @welcome.update_attributes(params[:welcome])
        format.html { redirect_to welcomes_path, notice: 'Welcome was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  #delete pic
  def destroy
    @time = Room.all_times
    @day_list = Room.all_days
    @admin = session[:admin]
    @welcome = Welcome.find(params[:id])
    @welcome.destroy

    respond_to do |format|
      format.html { redirect_to welcomes_url }
      format.json { head :no_content }
    end
  end
end
