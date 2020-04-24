class Post < ApplicationRecord #ActiveRecord::Base #
	def self.text_search(query)
		if query.present?
			where("title ilike :q or body ilike :q", q: "%#{query}%")
		else
			all
		end
	end
end
