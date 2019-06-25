class RidersController < ApplicationController

    def new
        @rider = Rider.new
        @rollercoasters = Rollercoaster.all
        render :new
    end

    def index
        @riders = Rider.all
        render :index
    end

    def create
        @rider = Rider.create(rider_params)
        redirect_to("/riders/#{@rider.id}")
    end

    def show
        @rider = Rider.find(params[:id])
        @rollercoasters = @rider.rollercoasters
        render :show
    end

    private

    def rider_params
        params.require(:rider).permit(:name, :age, rollercoaster_ids:[])
    end
end
