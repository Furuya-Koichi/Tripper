class AddDetailsToposts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :country, :string
  end
end
