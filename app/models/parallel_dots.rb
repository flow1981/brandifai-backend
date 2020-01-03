class ParallelDots < ApplicationRecord


  def self.get_data

    # require "paralleldots"

    # set_api_key(Rails.application.credentials.dig(:second_api_key))
    # # get_api_key()

    text = 'Under the Uruguay Round, the national governments of all the member countries have negotiated improved access to the markets of the member countries so as to enable business enterprises to convert trade concessions into new business opportunities.'

    # puts taxonomy(text)
    key = Rails.application.credentials.dig(:second_api_key)

    response = RestClient.post "https://apis.paralleldots.com/v4/taxonomy", { api_key: key, text: text }
	  puts response = JSON.parse( response )
    
  end

end