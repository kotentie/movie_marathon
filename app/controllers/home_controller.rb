class HomeController < ApplicationController
  def index
  	if session[:user_id]
  	@marathons = Marathon.where(user_id: session[:user_id])
  	else
  	@marathons
  	end
  end
end
