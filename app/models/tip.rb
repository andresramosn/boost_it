class Tip < ApplicationRecord
  belongs_to :user
  has_many :list_tips
  mount_uploader :photo, PhotoUploader
end
