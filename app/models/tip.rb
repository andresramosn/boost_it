class Tip < ApplicationRecord
  belongs_to :user
  has_many :list_tips
end
