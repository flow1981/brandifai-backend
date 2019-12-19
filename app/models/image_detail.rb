class ImageDetail < ApplicationRecord
  belongs_to :image
  has_one :stat
end
