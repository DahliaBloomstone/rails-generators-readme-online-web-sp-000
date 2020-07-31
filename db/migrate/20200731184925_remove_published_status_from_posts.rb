class RemovePublishedStatusFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :published_status, :string
  end
end

# rails g migration remove_published_status_from_posts published_status:string --no-test-framework
