class YourTanksController < ApplicationController
    def index
        @tanks = current_user.tanks
    end
end
