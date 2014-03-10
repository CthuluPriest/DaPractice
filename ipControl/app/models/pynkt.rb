class Pynkt < ActiveRecord::Base
		  validates :name, uniqueness: true
end
