class AddImage2ToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :image2, :text, after: :image

  end
end
