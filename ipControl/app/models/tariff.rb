class Tariff < ActiveRecord::Base
	validates :name, uniqueness: true
end
