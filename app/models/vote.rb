class Vote < ApplicationRecord
  belongs_to :site
  validates :comment, length: { maximum: 255 }
end
