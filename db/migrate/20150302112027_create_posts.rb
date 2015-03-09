class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :title
      t.string :description
      t.string :price
      t.string :email
      t.string :key
      t.timestamps
    end
  end
end
