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
			@response = OAuth2.authenticated_request(endpoint, key);
		else
			@response = "internal_error: code not found";
		end
	end

end
