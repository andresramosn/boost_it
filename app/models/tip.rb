class Tip < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :list_tips
  mount_uploader :photo, PhotoUploader
  CATEGORIES = ["Bar", "Art Gallery", "Cafe", "Casino", "Museum", "Night Club", "Park", "Restaurant", "Attraction"]
  validates :category, inclusion: { in: CATEGORIES }
  COLORS = { "Bar": "turquoise", "Art Gallery": "pink", "Cafe": "beige", "Casino": "red", "Museum": "orange", "Night Club": "purple", "Park": "green", "Restaurant": "blue", "Attraction": "yellow" }
end

# update
