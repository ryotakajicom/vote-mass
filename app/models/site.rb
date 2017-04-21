class Site < ApplicationRecord
  validates :comment, length: { maximum: 255 }
end
