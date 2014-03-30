class Marathon < ActiveRecord::Base
	has_many :chosenmovies
	belongs_to :user

	validates :name, presence: true
	validates :duration, numericality: {only_integer: true}
end
