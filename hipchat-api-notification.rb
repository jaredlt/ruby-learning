
require 'net/https'
require 'json'

# creates uri variable so you can call: host, request_uri, port etc. separately
uri = URI.parse("https://api.hipchat.com/v2/room/1727540/notification?auth_token=gudGL3yVU7tDBhUjMub9IyW8REQ86irAKlXwMg3k")

http = Net::HTTP.new(uri.host, uri.port)

http.use_ssl = true
request = Net::HTTP::Post.new(uri.request_uri, {'Content-Type' => 'application/json'})
request.body = {
    "notify"          => false,
    "message_format"  => "text",
    "message"         => "Your mum is fat (troll)",
    "color"						=> "green"
}.to_json
response = http.request(request)
puts response.body