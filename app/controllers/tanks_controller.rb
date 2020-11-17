class TanksController < ApplicationController

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
  
  private

  def tank_params
      params.require(:tank).permit(:name, :weight_in_kg, :manufacturer, :description, :price_per_day, :capacity, photos: [])
  end

end
