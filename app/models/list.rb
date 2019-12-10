class List < ApplicationRecord
  belongs_to :user
  has_many :list_tips
  has_many :shares
  has_many :property_lists
  has_many :tips, through: :list_tips
end
