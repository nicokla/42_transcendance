class RootController < ApplicationController

	require 'custom_oauth2'

	def login
		endpoint = "https://api.intra.42.fr/oauth/authorize";
		redirect_uri = "http://localhost:3000/main";
		@login_link = OAuth2.authorization(endpoint, redirect_uri);
	end

	def main
		if (params[:code].present?)
			endpoint = "https://api.intra.42.fr/oauth/token";
			OAuth2.token(endpoint, params[:code], params[:state]);
			endpoint = "https://api.intra.42.fr/oauth/token/info";
			key = "resource_owner_id";
			@userId = OAuth2.authenticated_request(endpoint)["resource_owner_id"];
			
			sleep(0.5)
			#https://api.intra.42.fr/apidoc/2.0/users/show.html
			endpoint2 = "https://api.intra.42.fr/v2/users/" + @userId.to_s();
			@login = OAuth2.authenticated_request(endpoint2)["login"];
			@imageUrl = 'https://cdn.intra.42.fr/users/small_' + @login + '.jpg'
		else
			@response = "internal_error: code not found";
		end
	end

end
