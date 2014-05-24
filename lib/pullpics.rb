require './imgur'
  
client = Imgur::Client.new
image = client.images.all(resources: "r/EarthPorn", page: 0) #client.images.all.first
image[2].open_in_browser

puts image[2]
