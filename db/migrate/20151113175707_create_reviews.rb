class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :book, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :body
      t.integer :rating
      t.index [:user_id, :book_id], unique: true

      t.timestamps null: false
    end
  end
end
