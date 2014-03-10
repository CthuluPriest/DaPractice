class Purpose < ActiveRecord::Base
		  validates :name, uniqueness: true
end
