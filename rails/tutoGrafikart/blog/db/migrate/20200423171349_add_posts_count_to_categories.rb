class AddPostsCountToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :posts_count, :integer, default: 0
  end
end
