class Provider < ActiveRecord::Base
		  validates :name, uniqueness: true
end
