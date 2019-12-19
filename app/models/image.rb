class Image < ApplicationRecord
  belongs_to :profile
  has_one :image_detail
end
