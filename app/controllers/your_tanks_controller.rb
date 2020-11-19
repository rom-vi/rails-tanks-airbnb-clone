class YourTanksController < ApplicationController
    def index
      @tanks = policy_scope(current_user.tanks)
    end

    def destroy
      @tank = Tank.find(params[:id])
      authorize @tank
      @tank.destroy
      redirect_to your_tanks_path
    end
end
