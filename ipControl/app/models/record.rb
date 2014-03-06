class Record < ActiveRecord::Base
	  validates :name, :subdivision_type, :oblast, 
	  :pynkt, :street, :house, :post_index, :purpose, :technology, :tarifff, :provider, presence: true
end
