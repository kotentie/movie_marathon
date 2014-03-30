class Marathon < ActiveRecord::Base
	has_many :chosenmovies
	belongs_to :user
end
