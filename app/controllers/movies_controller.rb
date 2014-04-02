include RottenTomatoes

class MoviesController < ApplicationController
  def search
  end

  def results
  	@m = params[:query]
  	Rotten.api_key = 'w9fhtn4fc3v4k3g9reuheeuj'
  	@movie = RottenMovie.find(:title => @m, :limit => 10)
  	p @movie
  end

  def create
  	@findmovie = Movie.find_or_create_by!(name: params[:name], runtime: params[:runtime])
  	@likedmovie = Likedmovie.find_or_create_by!(user_id: session[:user_id], movie_id: @findmovie.id)
  	redirect_to "/"	
  end
end
