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

# Profile.create(username: "adam", icon_url: "https://www.thesun.co.uk/wp-content/uploads/2018/08/NINTCHDBPICT000428200792-e1535023734744.jpg")
# Profile.create(username: "eve", icon_url: "https://www.hairstylo.com/wp-content/uploads/2018/11/Hairstyles-for-small-face-45.jpg")
# puts "created #{Profile.all.length} profiles"

# Image.create(image_url: 'https://lolnein.com/comics/adayatthebeach.png', profile_id: Profile.all.first.id)
# Image.create(image_url: 'http://blogs.slj.com/goodcomicsforkids/files/2019/04/origin-1.jpg', profile_id: Profile.all.first.id)
# Image.create(image_url: 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Ash_Tree_-_geograph.org.uk_-_590710.jpg', profile_id: Profile.all.first.id)
# Image.create(image_url: 'https://i.stack.imgur.com/bf7tS.jpg', profile_id: Profile.all.first.id)
# Image.create(image_url: 'https://i.imgur.com/ptLFNyn.jpg', profile_id: Profile.all.second.id)
# Image.create(image_url: 'https://i.imgur.com/XP5V9X9.jpg', profile_id: Profile.all.second.id)
# puts "created #{Image.all.length} images"

# Stat.create(profile_id: Profile.all.first.id)
# Stat.create(profile_id: Profile.all.second.id)
# puts "created #{Stat.all.length} stats"


# Scraper.test_data.each{
#   |concept| 
#   ImageDetail.create(image_id: Image.first.id, stat_id: Stat.first.id, model: concept[:model], tag: concept[:tag], value: concept[:value])
# }


# puts "created #{ImageDetail.all.length}  image data"

# File.write("/Users/alexshom/Desktop/filename.json", details)
# pp JSON.parse(details.last.data)[:status]

# ImageDatum.create(image_id: stat_id: )

