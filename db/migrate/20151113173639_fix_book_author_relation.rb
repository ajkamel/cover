class FixBookAuthorRelation < ActiveRecord::Migration
  def change
    remove_column :authors, :books_id, :integer
    remove_column :authors, :author_id, :integer
    add_reference :books, :author, index: true,
                                   foreign_key: { on_delete: :cascade }
  end
end
