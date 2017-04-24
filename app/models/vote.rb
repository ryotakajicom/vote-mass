class Vote < ApplicationRecord
  belongs_to :site
  validates :comment, length: { maximum: 255 }
  
  def self.ranking
    self.group(:site_id).order('count_site_id DESC').limit(10).count(:site_id)
  end
end
