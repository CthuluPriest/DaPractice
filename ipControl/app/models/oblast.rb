class Oblast < ActiveRecord::Base
	  validates :name, uniqueness: true
end
