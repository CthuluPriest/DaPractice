class SubdivisionType < ActiveRecord::Base
	validates :name, uniqueness: true
end
