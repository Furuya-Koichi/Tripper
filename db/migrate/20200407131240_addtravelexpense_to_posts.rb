class AddtravelexpenseToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :travelexpense, :string
  end
end
