class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user
      t.string :title
      t.string :category
      t.text :description
      t.string :location
      t.string :condition

      t.timestamps null: false
    end
  end
end
