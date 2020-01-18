class ParallelDots < ApplicationRecord


  def self.get_data(text)

    # require "paralleldots"

    # set_api_key(Rails.application.credentials.dig(:second_api_key))
    # # get_api_key()


    # puts taxonomy(text)
    key = Rails.application.credentials.dig(:second_api_key)

    response = RestClient.post "https://apis.paralleldots.com/v4/taxonomy", { api_key: key, text: text }
    
    return JSON.parse(response)
  end

end