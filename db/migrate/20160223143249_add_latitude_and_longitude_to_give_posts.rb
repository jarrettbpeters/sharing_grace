class AddLatitudeAndLongitudeToGivePosts < ActiveRecord::Migration
  def change
    add_column :give_posts, :latitude, :float
    add_column :give_posts, :longitude, :float
  end
end
