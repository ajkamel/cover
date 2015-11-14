class MakeBookAuthorRequired < ActiveRecord::Migration
  def change
    change_column_null :books, :author_id, false
  end
end
