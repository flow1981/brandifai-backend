class ProfileSerializer < ActiveModel::Serializer

attributes :id, :username, :icon_url, :images

has_many :images



end