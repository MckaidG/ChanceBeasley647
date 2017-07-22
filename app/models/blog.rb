class Blog < ApplicationRecord
    has_many :comments, dependent: :destroy
    extend FriendlyId
    friendly_id :title, use: :slugged
    mount_uploader :image, BlogUploader
    mount_uploader :image2, BlogUploader
    mount_uploader :image3, BlogUploader
    def self.recent
        order("created_at DESC")
    end
end
