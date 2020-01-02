class ProfileSummarySerializer < ActiveModel::Serializer

attributes :id, :username, :icon_url

has_one :stat

end