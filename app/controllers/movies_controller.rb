include RottenTomatoes

class MoviesController < ApplicationController
  def search
  end

  def results
  	@m = params[:query]
  	Rotten.api_key = 'w9fhtn4fc3v4k3g9reuheeuj'
  	@movie = RottenMovie.find(:title => @m, :limit => 1)
  	p @movie
  end
end
