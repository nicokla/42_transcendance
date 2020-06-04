# https://github.com/search?l=Ruby&q=https%3A%2F%2Fapi.intra.42.fr%2Foauth%2Fauthorize&type=Code
# https://github.com/Asandolo/42bots/blob/491d71face6e10ca06249e2936d5d4031a2b3b51/bot.rb




require 'oauth2'
require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("https://api.intra.42.fr/oauth/token")
request = Net::HTTP::Post.new(uri)
request.set_form_data(
	"client_id" => UID,
	"grant_type" => "refresh_token",
	"refresh_token" => refresh_old,
)
req_options = {
	use_ssl: uri.scheme == "https",
}
response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
	http.request(request)
end
return { status: :error, reason: "Impossible de Regénérer votre token. 
	Sois vous devez vous re connecter a nouveau, sois votre compte 42 est 
	innacesible. Vous pouvez tentez de vous re connecter via la commande : 
	42refresh." } unless response.code == '200'
r_parsed = JSON.parse(response.body)



uri = URI.parse("https://api.intra.42.fr/oauth/token/info")
request = Net::HTTP::Get.new(uri)
request["Authorization"] = "Bearer #{user_token}"
req_options = {
	use_ssl: uri.scheme == "https",
}
response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
	http.request(request)
end
