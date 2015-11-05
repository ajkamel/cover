class CreateBookLists < ActiveRecord::Migration
  def change
    create_table :book_lists do |t|
      t.integer :book_id, null: false, index: true
      t.integer :list_id, null: false, index: true  
      t.timestamps null: false
    end
  end
end
