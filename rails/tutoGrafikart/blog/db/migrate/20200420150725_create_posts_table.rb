class CreatePostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content, limit: 4294967295
    end
  end
end
