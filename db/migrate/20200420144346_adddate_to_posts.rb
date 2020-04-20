class AdddateToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :fdate, :date
  end
end
