class Place < ActiveRecord::Base
	belongs_to :user
	geocoded_by :address 
	after_validation :geocode

	validates :name, :presence => true, length: { minimum: 3}
	validates :address, :presence => true
	validates :description, :presence => true

	

	 #validates :title, :presence => true, :uniqueness => true, :length => { :maximum => 100 }

end
