# imgur

Library to interface with the imgur API.

## Usage

1. Register your application with imgur at https://api.imgur.com/oauth2/addclient
2. Place a file called .imgurrc in your user's $HOME directory with the following contents
  <pre>
  :client_id: "client_id_from_registering_app"
  :client_secret: "client_secret_from_registering_app"
  :account_username: "username_of_imgur_account"
  </pre>
3. On first run, you will be presented with a browser window asking you to allow access to your account, do this.
4. After approval, you will be prompted to enter both the access_token and refresh_token values, which can be retrieved from the URL of the page you are redirected to

### Examples:

#### Get first page of gallery:

  ```ruby
  client = Imgur::Client.new
  client.images.all(resource: "gallery", page: 0)
  -> [
       [  0] #<Imgur::Client::Image:0x7fa559f29f08 attributes={id:"pzJKU",title:"I had quite the view last night",datetime:1355670464,animated:false,width:5184,height:3456,size:519719,views:0,bandwidth:0,account_url:nil,link:"http://i.imgur.com/pzJKU.jpg",ups:94,downs:0,score:406,is_album:false}>,
       ...
       [173] #<Imgur::Client::Image:0x7fa55ad4a5b0 attributes={id:"CmIrs",title:"Day officially made",datetime:1355595301,animated:false,width:245,height:176,size:899725,views:21774,bandwidth:19590612150,account_url:"idontwantoliveonthisplanetanymore",link:"http://i.imgur.com/CmIrs.gif",ups:269,downs:6,score:273,is_album:false}>
     ]
  ```

#### Open image in browser

  ```ruby
  client = Imgur::Client.new
  image = client.images.all.first
  image.open_in_browser
  ```

## Contributing to imgur
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.

## Copyright

Copyright (c) 2012 Eugene Howe. See LICENSE.txt for
further details.

