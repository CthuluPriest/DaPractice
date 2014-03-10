class Rayon < ActiveRecord::Base
	validates :name, uniqueness: true
end
