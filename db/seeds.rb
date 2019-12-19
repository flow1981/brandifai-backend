# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profile.destroy_all
Image.destroy_all
Stat.destroy_all
ImageDetail.destroy_all

data_variable = {
  :status=>{:code=>10000, :description=>"Ok", :req_id=>"f5648336c6a84e1c995920c91e0459ba"}, 
  :outputs=>[{:id=>"bbe14a2fd122452280bfb438171f7cca", 
              :status=> {:code=>10000, 
                          :description=>"Ok"}, 
                          :created_at=>"2019-12-19T15:33:08.621326844Z", 
                          :model=>{:id=>"aaa03c23b3724a16a56b629203edc62c", 
                                    :name=>"general", 
                                    :created_at=>"2016-03-09T17:11:39.608845Z", 
                                    :app_id=>"main", 
                                    :output_info=>{ :message=>"Show output_info with: GET /models/{model_id}/output_info", 
                                                    :type=>"concept",
                                                    :type_ext=>"concept"}, 
                                    :model_version=>{ :id=>"aa7f35c01e0642fda5cf400f543e7c40", 
                                                      :created_at=>"2018-03-06T21:10:24.454834Z", 
                                                      :status=>{:code=>21100, 
                                                                :description=>"Model is trained and ready"}, 
                                                                :worker_id=>"a6896f77b00845b89216102aae0c16b7"}, 
                                                      :display_name=>"General"}, 
                            :input=>{ :id=>"4de1a395a59642bfa373db2a35b80555", 
                                      :data=>{:image=>{:url=>"https://scontent-lht6-1.cdninstagram.com/v/t51.2885-15/e35/72360761_480866459439773_939422104611827249_n.jpg?_nc_ht=scontent-lht6-1.cdninstagram.com&_nc_cat=105&_nc_ohc=HvGwPqM6Wa4AX9Q1MDL&oh=68bb8ce49e3a3dc721ec16417edf2edb&oe=5E992863"}}},
                            :data=>{:concepts=>[{:id=>"ai_xxnGcd42", :name=>"seat", :value=>0.99874, :app_id=>"main"}, {:id=>"ai_c9n7SB25", :name=>"furniture", :value=>0.99865013, :app_id=>"main"}, {:id=>"ai_GxSDhQ34", :name=>"facial expression", :value=>0.99853563, :app_id=>"main"}, {:id=>"ai_pPxqdnP5", :name=>"room", :value=>0.9980844, :app_id=>"main"}, {:id=>"ai_XfLPtf7R", :name=>"sofa", :value=>0.9976275, :app_id=>"main"}, {:id=>"ai_94cQBGlt", :name=>"two", :value=>0.9975168, :app_id=>"main"}, {:id=>"ai_qQfFFhsc", :name=>"togetherness", :value=>0.9957075, :app_id=>"main"}, {:id=>"ai_VPmHr5bm", :name=>"adult", :value=>0.9935321, :app_id=>"main"}, {:id=>"ai_dxSG2s86", :name=>"man", :value=>0.99162835, :app_id=>"main"}, {:id=>"ai_Pf2b7clG", :name=>"indoors", :value=>0.990963, :app_id=>"main"}, {:id=>"ai_RQccV41p", :name=>"woman", :value=>0.98996884, :app_id=>"main"}, {:id=>"ai_mvRRZ5Mq", :name=>"happiness", :value=>0.9891237, :app_id=>"main"}, {:id=>"ai_j09mzT6j", :name=>"family", :value=>0.98848367, :app_id=>"main"}, {:id=>"ai_l8TKp2h5", :name=>"people", :value=>0.98554635, :app_id=>"main"}, {:id=>"ai_vhvTrLRT", :name=>"affection", :value=>0.982033, :app_id=>"main"}, {:id=>"ai_swtdphX8", :name=>"love", :value=>0.97955537, :app_id=>"main"}, {:id=>"ai_86sS08Pw", :name=>"wear", :value=>0.9792518, :app_id=>"main"}, {:id=>"ai_L3mzGfDT", :name=>"offspring", :value=>0.9789959, :app_id=>"main"}, {:id=>"ai_Tr4Ws1jL", :name=>"reclining", :value=>0.97810125, :app_id=>"main"}, {:id=>"ai_TJ9wFfK5", :name=>"portrait", :value=>0.97411263, :app_id=>"main"}]}}]
}

Profile.create(profile_name: "adam")
Profile.create(profile_name: "eve")
puts "created #{Profile.all.length} profiles"

Image.create(image_url: 'https://lolnein.com/comics/adayatthebeach.png', profile_id: Profile.all.first.id)
Image.create(image_url: 'https://lolnein.com/comics/adayatthebeach.png', profile_id: Profile.all.first.id)
Image.create(image_url: 'https://lolnein.com/comics/adayatthebeach.png', profile_id: Profile.all.first.id)
Image.create(image_url: 'https://lolnein.com/comics/adayatthebeach.png', profile_id: Profile.all.first.id)
Image.create(image_url: 'https://lolnein.com/comics/adayatthebeach.png', profile_id: Profile.all.second.id)
Image.create(image_url: 'https://lolnein.com/comics/adayatthebeach.png', profile_id: Profile.all.second.id)
puts "created #{Image.all.length} images"

Stat.create(profile_id: Profile.all.first.id, data: "here is the AI data")
Stat.create(profile_id: Profile.all.second.id, data: "here is more AI data")
puts "created #{Stat.all.length} stats"


ImageDetail.create(image_id: Image.all.first.id, stat_id: Stat.all.first.id, data: "more stats and stuff 1")
ImageDetail.create(image_id: Image.all.second.id, stat_id: Stat.all.first.id, data: "more stats and stuff 2")
ImageDetail.create(image_id: Image.all.third.id, stat_id: Stat.all.first.id, data: "more stats and stuff 3")
ImageDetail.create(image_id: Image.all.fourth.id, stat_id: Stat.all.first.id, data: "more stats and stuff 4")
ImageDetail.create(image_id: Image.all.fifth.id, stat_id: Stat.all.second.id, data: "more stats and stuff 5")
ImageDetail.create(image_id: Image.all[5].id, stat_id: Stat.all.second.id, data: data_variable)
puts "created #{ImageDetail.all.length}  image data"

details = ImageDetail.last.data
# File.write("/Users/alexshom/Desktop/filename.json", details)
# pp JSON.parse(details.last.data)[:status]
pp data_variable

# ImageDatum.create(image_id: stat_id: )

