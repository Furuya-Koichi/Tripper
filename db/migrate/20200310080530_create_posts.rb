class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.text :image
      t.string :name
      t.timestamps
    end
  end
end
