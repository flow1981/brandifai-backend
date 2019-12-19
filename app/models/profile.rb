class Profile < ApplicationRecord
  has_many :images
  has_one :stat
end
