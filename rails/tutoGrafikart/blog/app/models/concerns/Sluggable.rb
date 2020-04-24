module Sluggable


	extend ActiveSupport::Concern

	included do
		before_validation :set_default_slug, on: [:create, :update]
		validates :slug, format: {with: /\A[a-z0-9\-]+\z/}, uniqueness: true

		private

		def set_default_slug
			#self.update_column(:name, 'Salut les gens')
			# if self.name.nil? || self.name.empty?
			# 	throw :abort
			# end
			if !self.name.nil? && !self.name.empty? && (self.slug.nil? || self.slug.empty?)
				self.slug = name.parameterize
			end
		end

	end

end