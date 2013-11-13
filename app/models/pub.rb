class Pub < ActiveRecord::Base
	validates_presence_of :name, :image, :pub_type
	
	#mount_uploader :image, PubUploader
	belongs_to :pub_type
end
