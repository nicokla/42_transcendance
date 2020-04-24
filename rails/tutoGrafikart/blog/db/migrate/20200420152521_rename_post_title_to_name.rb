class RenamePostTitleToName < ActiveRecord::Migration[6.0]
	def change
		change_table :posts do |t|
			t.rename :title, :name
		end
  end
end
