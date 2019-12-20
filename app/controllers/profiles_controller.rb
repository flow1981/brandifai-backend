class ProfilesController < ApplicationController

  def index 
    profiles = Profile.all
    render json: ProfileSerializer.new(profiles).to_serialized_json
  end


end
