class ListTip < ApplicationRecord
  belongs_to :tip
  belongs_to :list
  CATEGORIES = ["Bar", "Art Gallery", "Cafe", "Casino", "Museum", "Night Club", "Park", "Restaurant", "Attraction"]
end
