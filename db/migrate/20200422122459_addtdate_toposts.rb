class AddtdateToposts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :tdate, :date
  end
end
