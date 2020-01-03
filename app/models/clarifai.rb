class Clarifai < ApplicationRecord


  def self.get_data(image_url)

 
    api_key = Rails.application.credentials.dig(:api_key)

    client = Clarinet::App.new api_key

    output = client.models.predict(Clarinet::Model::GENERAL, image_url)
    parse_data(output)
  end

  def self.parse_data(data)
    array = data[:outputs][0][:data][:concepts] ## array of objects with concept values
    model = data[:outputs][0][:model][:display_name]
    final_output = array.map{ |concept| {model: model, tag: concept[:name], value: concept[:value]}}
    return final_output
  end



end