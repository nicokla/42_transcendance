class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
			t.integer :status, default: 0
    end
  end
end