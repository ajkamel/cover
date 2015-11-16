class AddAverageRatingToBooks < ActiveRecord::Migration
  def change
    add_column :books, :average_rating, :integer, default: 0
    add_index :books, :average_rating
  end
end
