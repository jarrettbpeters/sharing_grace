class AddAgeRangeToReceivePost < ActiveRecord::Migration
  def change
    add_column :receive_posts, :age_range, :integer
  end
end
