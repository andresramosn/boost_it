class Tip < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :list_tips
  mount_uploader :photo, PhotoUploader
  CATEGORIES = ["Bar", "Art Gallery", "Bar", "Cafe", "Casino", "Museum", "Night Club", "Park", "Restaurant", "Attraction"]
  validates :category, inclusion: { in: CATEGORIES }
end

#update
