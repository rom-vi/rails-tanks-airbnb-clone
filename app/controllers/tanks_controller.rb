class TanksController < ApplicationController
  before_action :set_tank, only: [:destroy]

  def index
    @tanks = current_user.tanks
  end

    
  def new
      @tank = Tank.new
  end

  def create
      @tank = Tank.new(tank_params)
      if @tank.save
        flash[:success] = "Tank successfully created"
        redirect_to @tank
      else
        flash[:error] = "Something went wrong"
        render 'new'
      end
  end

  def destroy
    @tank.destroy
    redirect_to tanks_path
  end
  
  private

  def set_tank
    @tank = Tank.find(params[:id])
  end

  def tank_params
      params.require(:tank).permit(:name, :weight_in_kg, :manufacturer, :description, :price_per_day, :capacity, photos: [])
  end

end
