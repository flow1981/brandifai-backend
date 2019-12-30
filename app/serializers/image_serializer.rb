class ImageSerializer < ActiveModel::Serializer

  attributes :id, :image_url, :image_details

  has_many :image_details

  def image_details
    object.image_details.map{|detail| {model: detail.model, tag: detail.tag, value: detail.value}}
  end
  
  end