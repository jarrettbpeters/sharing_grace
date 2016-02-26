class AddAgeRangeToGivePost < ActiveRecord::Migration
  def change
    add_column :give_posts, :age_range, :integer
  end
end
