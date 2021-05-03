class Post < ApplicationRecord
	belongs_to :user
	belongs_to :category

	mount_uploader :image, ImageUploader
	has_one_attached :image  
end
