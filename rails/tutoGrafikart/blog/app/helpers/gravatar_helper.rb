module GravatarHelper

	def gravatar(email, options = {s: 200})
		# throw TypeError unless email.respond_to?(:to_s)
		# "https://1.gravatar.com/avatar/#{Digest::HD5.hexdigest(email.to_s)}?s=#{options[:s]}"
	end
end