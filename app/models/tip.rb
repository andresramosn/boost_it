class Tip < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :list_tips
  mount_uploader :photo, PhotoUploader
end

#update
