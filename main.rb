require 'sinatra'
require 'sinatra/reloader' if development?
require 'net/http'
require 'uri'

get '/' do
  text = 'なるほど'
  fontsize = 16
  background_color = '3d4070'
  url = URI.escape("http://placehold.jp/#{fontsize}/#{background_color}/ffffff/300x100.png?text=#{text}")

  content_type 'image/png'
  return Net::HTTP.get_response(URI.parse(url)).body
end
