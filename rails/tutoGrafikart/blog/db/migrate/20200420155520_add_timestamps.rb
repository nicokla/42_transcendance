class AddTimestamps < ActiveRecord::Migration[6.0]
	def change
		add_timestamps :posts, default: Time.zone.now
		change_column_default :posts, :created_at, nil
		change_column_default :posts, :updated_at, nil
	end
end
