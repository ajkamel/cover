class CreateBooksLists < ActiveRecord::Migration
  def change
    create_table :books_lists do |t|
    	t.integer :book_id, null: false, index: true
    	t.integer :list_id, null: false, index: true
    end
  end
end
