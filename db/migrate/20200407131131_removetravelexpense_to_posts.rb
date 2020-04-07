class RemovetravelexpenseToPosts < ActiveRecord::Migration[5.0]
  def change
     remove_column :posts, :travelexpense, :integer
  end
end
