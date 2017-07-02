class AddImage3ToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :image3, :text, after: :image2
  end
end
