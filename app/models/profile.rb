class Profile < ApplicationRecord
  has_many :images
  has_many :image_details, through: :images
  has_one :stat
end
