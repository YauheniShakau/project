class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :body
      t.string :genre
      t.boolean :published

      t.timestamps
    end
  end
end
