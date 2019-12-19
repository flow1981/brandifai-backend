class Stat < ApplicationRecord
  belongs_to :profile
  has_many :image_details
end
