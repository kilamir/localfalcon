class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.integer :site_id
      t.integer :user_id
      t.string :blog_title
      t.text :blog_body
      t.string :tags

      t.timestamps
    end
  end
end
