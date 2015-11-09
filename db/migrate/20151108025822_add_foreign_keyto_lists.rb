class AddForeignKeytoLists < ActiveRecord::Migration
  def self.up
    add_foreign_key :book_lists, :books, on_delete: :cascade
    add_foreign_key :book_lists, :lists, on_delete: :cascade
  end

  def self.down
    remove_foreign_key :book_lists, :books, on_delete: :cascade
    remove_foreign_key :book_lists, :lists, on_delete: :cascade
  end
end
