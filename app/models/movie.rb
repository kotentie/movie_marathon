class Movie < ActiveRecord::Base
	has_many :chosenmovies
	has_many :likedmovies

	validates :name, presence: true
	validates :runtime, numericality: {only_integer: true}
end
