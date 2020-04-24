class AddSlugToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :slug, :string
  end
end
