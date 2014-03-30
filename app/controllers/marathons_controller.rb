class MarathonsController < ApplicationController
  def index
  end

  def new
  	@marathon = Marathon.new
  end

  def create
	@marathon = Marathon.create(params.require(:marathon).permit(:name, :user_id, :duration, :start_time))
	render text: params[:marathon].inspect
  end

end
