class ChangePostStatusDataTypeToPosts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :post_status, :string
  end
end

#rails g migration add_post_status_to_posts post_status:boolean --no-test-framework
#rails g migration change_post_status_data_type_to_posts post_status:string --no-test-framework
