class TanksController < ApplicationController
  before_action :set_tank, only: [:destroy, :show, :edit, :update]

  
  def index
    if params[:query].present?
      sql_query = " \
        tanks.name @@ :query \
        OR tanks.description @@ :query \
        OR tanks.manufacturer @@ :query \
      "
      @tanks = Tank.where(sql_query, query: "%#{params[:query]}%")
    else
      @tanks = Tank.all
    end
  end


  def show
  end


  def new
    @tank = Tank.new
  end

  def create
    @tank = Tank.new(tank_params)
    @tank.user = current_user
    if @tank.save!
      flash[:success] = "Tank successfully created"
      redirect_to tanks_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def destroy
    @tank.destroy
    redirect_to tanks_path
  end

  def edit
  end

  def update
    @tank.update(tank_params)
    redirect_to tank_path(@tank)
  end
  
  private

  def set_tank
    @tank = Tank.find(params[:id])
  end

  def tank_params
    params.require(:tank).permit(:name, :weight_in_kg, :manufacturer, :description, :price_per_day, :capacity, photos: [])
  end
end
