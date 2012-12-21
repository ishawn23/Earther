class Imgur::Client
  class Real
    def get_image(id)
      path = "/image/#{id["id"]}"

      request(
        :method => :get,
        :path   => path,
      )
    end
  end
end
