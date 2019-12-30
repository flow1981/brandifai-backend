class ProfileSerializer < ActiveModel::Serializer

attributes :username, :icon_url, :images

has_many :images



end