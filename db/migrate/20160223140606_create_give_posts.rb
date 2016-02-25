class CreateGivePosts < ActiveRecord::Migration
  def change
    create_table :give_posts do |t|
      t.string :title
      t.string :category
      t.string :location
      t.text :description
      t.string :condition
      t.string :user_id

      t.timestamps null: false
    end
  end
end
