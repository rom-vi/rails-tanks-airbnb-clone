class TanksController < ApplicationController
  before_action :set_tank, only: [:destroy, :show, :edit, :update]

  def index
    @tanks = policy_scope(current_user.tanks)
  end

  def show
    authorize @tank
  end

  def new
    @tank = Tank.new
  end

  def create
    @tank = Tank.new(tank_params)
    @tank.user = current_user
    authorize @tank
    if @tank.save!
      flash[:success] = "Tank successfully created"
      redirect_to tanks_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def destroy
    authorize @tank
    @tank.destroy
    redirect_to tanks_path
  end

  def edit
    authorize @tank
  end

  def update
    authorize @tank
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
