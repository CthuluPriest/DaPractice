class Sovet < ActiveRecord::Base
	validates :name, uniqueness: true
end
