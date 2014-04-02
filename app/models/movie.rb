class Movie < ActiveRecord::Base
	has_many :chosenmovies
	has_many :likedmovies

	validates :name, presence: true
end
