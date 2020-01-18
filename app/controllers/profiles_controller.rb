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
    number = 10

    profile = Profile.create(username: profile_name)
    stat = Stat.create(profile_id: profile.id)

    # run scraper with profile name
    image_urls = Scraper.get_user_posts(profile_name, number)

    image_urls.each { |image_url|
      image = Image.create({ image_url: image_url, profile_id: profile.id })
      callClarifaiApiOn(image, stat)
    }

    original_array = stat.image_details

    extended_array = original_array.map { |element| element.tag }

    text = extended_array.join(" ")

    stat.update( theme: ParallelDots.get_data(text))

    render json: profile.id
  end

  def update
    profile = Profile.find(params[:id])

    profile.update(icon_url: params[:icon_url])

    render json: profile
  end

  def destroy
    profile = Profile.find(params[:id])

    profile.destroy

    render json: { status: "Successful delete" }
  end

  def callClarifaiApiOn(image, stat)
    details = Clarifai.get_data(image.image_url)

    details.each { |detail|
      ImageDetail.create(image_id: image.id, stat_id: stat.id, tag: detail[:tag], value: detail[:value], model: detail[:model])
    }
    # ImageDetail.create(image_id: Image.first.id, stat_id: Stat.first.id, model: concept[:model], tag: concept[:tag], value: concept[:value])

  end
end
