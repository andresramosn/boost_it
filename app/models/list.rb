class List < ApplicationRecord
  belongs_to :user
  has_many :list_tips
  has_many :shares
end
