require './imgur'
  
client = Imgur::Client.new
image = client.images.all(subreddit: "EarthPorn", page: 0) #client.images.all.first
image[0].open_in_browser

#puts image[2]
