require 'sinatra'
require 'sinatra/reloader' if development?
require 'net/http'
require 'uri'

get '/' do
  fontsize = 24
  message_set = [
    'えんもたけなわ',
    '機械を通すと俺の心が通らなくなる',
    'えっち、すけっち、わんたっち',
    '人生どうでもアメリカンスピリット'
  ]
  background_color_set = [
    '3d4070',
    'E6503B',
    '3CA39C',
    'D8505C',
    'EE7E94',
    '0074BC',
    '98BE17'
  ]
  url = URI.escape("http://placehold.jp/#{fontsize}/#{background_color_set.sample()}/ffffff/300x100.png?text=#{message_set.sample()}")

  content_type 'image/png'
  return Net::HTTP.get_response(URI.parse(url)).body
end
