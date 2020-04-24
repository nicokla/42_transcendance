class Post < ApplicationRecord

	#validates :name, presence: {message: 'ne doit pas etre vide'}
	#validates :name, length: { in: 3..20 } #max: 3 # is: 2
	#validates :name, format: { with: /\A[a-zA-Z]+\z/ } 
	#validates :name, uniqueness: true
	#validates :name, acceptance: true # pour checkbox
	#validates :name, confirmation: true, 
	#validates :name, length: {is: 2}, on: :create, allow_blank: true, allow_nil:true
	
	#validates :name, length: {is: 2}, if: check_content_2
	#... unless: check_content_2
	
	# def check_content_2
	# 	content.length == 2
	# end

	# validates :ma_super_methode_de_validation
	# def ma_super_methode_de_validation
	# 	if name.nil? || name.length != 2
	# 		errors.add(:name, :not_2, {message: 'Le champ doit etre de 2 caracteres'})
	# 	end
	# 	if content.nil? || content.length != 2
	# 		errors.add(:content, 'Le champ doit etre de 2 caracteres')
	# 	end
	# end

	# gem validate_email

	# validates_with NameValidator

	# validates :name, name: {message: 'bloop erreur'}
	# validates :content, name: true

	include Sluggable
	#before_validation :default_slug
	#validates :slug, format: {with: /\A[a-z0-9\-]+\z/}, uniqueness: true

	belongs_to :category, counter_cache: true
	has_and_belongs_to_many :tags
	#has_many :metas, as: :metaable

	# default_scope { order(created_at: :desc) }
	scope :online, -> {where(online: 1)}
	# scope :alpha, -> {order(name: :asc)}
	# scope :online, -> (online) {where(online: online)}
	# scope :online, -> (online) do
	# 	where(online: online) if online.is_a? Integer
	# end
	# def self.online
	# 	where(online: 1)
	# end

	def as_json(options = nil)
		super(only: [:name, :id, :created_at])
	end

	# def to_partial_path
	# 	'salut/les/gens'
	# end

end