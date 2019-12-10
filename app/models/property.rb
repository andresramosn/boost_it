class Property < ApplicationRecord
  belongs_to :user
  has_many :property_lists
end
