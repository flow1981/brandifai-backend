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
    profile_name = params[:_json]
    number = 4

    profile = Profile.create(username: profile_name)
    stat = Stat.create(profile_id: profile.id)

    # run scraper with profile name
    image_urls = Scraper.get_user_posts(profile_name, number)
 
    # puts "lets print image urls"
    # puts '--'
    # puts image_urls
    # puts '--'
    # create images for each image url from scraper
    # Image.new(|{imager_url})
    image_urls.each { |image_url| 
      image = Image.create({image_url: image_url, profile_id: profile.id})
      callClarifaiApiOn(image, stat)
    }

    # run Clarifai on each image
    # create image deatil card for each image-ai-stat
    render json: params

  end

  def callClarifaiApiOn(image, stat)

    puts image.id
    array = []

    details = Clarifai.get_data(image.image_url)

    details.each{ |detail|
      array << ImageDetail.create(image_id: image.id, stat_id: stat.id, tag: detail[:tag], value: detail[:value], model: detail[:model])
    }
    # ImageDetail.create(image_id: Image.first.id, stat_id: Stat.first.id, model: concept[:model], tag: concept[:tag], value: concept[:value])

    puts array.size
    
  end


end
