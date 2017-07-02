class Blog < ApplicationRecord
has_many :comments, dependent: :destroy 

mount_uploader :image, BlogUploader
mount_uploader :image2, BlogUploader
mount_uploader :image3, BlogUploader
end
