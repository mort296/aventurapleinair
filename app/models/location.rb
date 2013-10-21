class Location < ActiveRecord::Base
	require 'net/http'
	mount_uploader :image, ImageUploader
	belongs_to :administrative_region
	has_and_belongs_to_many :activities
	has_many :links, as: :linkable

	lon = 1
	lat = 1
	@weather = Net::HTTP.get(URI.parse("http://openweathermap.org/data/2.1/find/city?lat=#{lat}&lon=#{lon}&cnt=1"))
end
