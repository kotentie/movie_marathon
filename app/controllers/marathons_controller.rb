class MarathonsController < ApplicationController
  def index
  end

  def new
  	@marathon = Marathon.new
  end

  def create
	@marathon = Marathon.create(params.require(:marathon).permit(:name, :user_id, :duration, :time_start))
	

	if @marathon.save
		redirect_to marathon_path(@marathon)
	else
		render text: params[:marathon].inspect
	end
  end

  def show
  	@marathon = Marathon.find(params[:id])
    @movies = Movie.joins(:likedmovies)
    p @movies
  end    

end
