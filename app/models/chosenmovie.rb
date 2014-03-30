class Chosenmovie < ActiveRecord::Base
	belongs_to :marathon
	belongs_to :movie
end
