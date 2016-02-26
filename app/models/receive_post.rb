class ReceivePost < ActiveRecord::Base
	geocoded_by :location
	after_validation :geocode

	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode

	belongs_to :user
end
