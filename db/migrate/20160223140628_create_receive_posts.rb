class CreateReceivePosts < ActiveRecord::Migration
  def change
    create_table :receive_posts do |t|
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
