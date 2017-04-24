class Site < ApplicationRecord
  has_many:votes
  mount_uploader :site_image, ImageUploader
end
