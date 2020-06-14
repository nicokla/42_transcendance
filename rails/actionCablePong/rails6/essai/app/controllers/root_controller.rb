class RootController < ApplicationController
  def index
	end

	def chooseWhoAmI
		# if cookies.key?("whoami")
		# 	puts "old cookie : #{cookies[:whoami]}"
		# end
		cookies.permanent[:whoami] = params[:mynameis]
	end
	
end
