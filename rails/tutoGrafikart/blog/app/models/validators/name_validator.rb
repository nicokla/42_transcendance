class NameValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		if value.nil? || value.length != 2
			# puts options.inspect
			message = options[:message] || 'doit avoir deux caracteres'
			record.errors.add(attribute, message)
		end
	end
end

# ::Validator
# 	def validate(record)
# 		if record.name.nil? || record.name.length != 2
# 			record.errors.add(:name, :not_2, {message: 'Le champ doit etre de 2 caracteres'})
# 		end
# 		if record.content.nil? || record.content.length != 2
# 			record.errors.add(:content, 'Le champ doit etre de 2 caracteres')
# 		end
# 	end