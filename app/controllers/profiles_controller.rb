class ProfilesController < ApplicationController

  def index 
    profiles = Profile.all
    render json: profiles, each_serializer: ProfileSummarySerializer
  end

  def show
    profile = Profile.find(params[:id])
    render json: profile #, serializer: ....
  end

  def create 
    # get profile name front frontend
    # create profile
    # run scraper with profile name
    # create images for each image url from scraper
    # run Clarifai on each image
    # create image deatil card for each image-ai-stat
    puts params

  end


end
