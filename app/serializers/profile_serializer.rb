class ProfileSerializer < ActiveModel::Serializer

attributes :id, :username, :icon_url, :images

has_one :stat
has_many :images

end