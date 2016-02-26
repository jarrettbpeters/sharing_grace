class AddLatitudeAndLongitudeToReceivePosts < ActiveRecord::Migration
  def change
    add_column :receive_posts, :latitude, :float
    add_column :receive_posts, :longitude, :float
  end
end
