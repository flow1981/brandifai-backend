class ProfilesController < ApplicationController

  def index 
    profiles = Profile.all
    render json: profiles, each_serializer: ProfileSummarySerializer
  end

  def show
    profile = Profile.find(params[:id])
    render json: profile #, serializer: ....
  end


end
