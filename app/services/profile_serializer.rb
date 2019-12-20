class ProfileSerializer 

def initialize(profile_object)
  @profile_object = profile_object
end

def to_serialized_json
  @profile_object.to_json(:include => {
    :images => {
      :only => [:image_url],
      :include => {
        :image_details => {
          :only => [:tag, :model, :value]
        }
      }
    }
  })
end

end