class Pub < ActiveRecord::Base
	mount_uploader :image, PubUploader
	belongs_to :pub_type
end
