class Technology < ActiveRecord::Base
	validates :name, uniqueness: true
end
