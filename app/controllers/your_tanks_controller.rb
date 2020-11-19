class YourTanksController < ApplicationController
    def index
      @tanks = policy_scope(current_user.tanks)
    end
end
