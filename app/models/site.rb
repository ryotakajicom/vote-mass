class Site < ApplicationRecord
  validates :site_name, presence: true, length: { maximum: 255 }
  validates :site_url, presence: true, length: { maximum: 255 }
  validates :site_image, presence: true
  has_many:votes
  mount_uploader :site_image, ImageUploader
end
