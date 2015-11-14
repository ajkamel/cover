class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name, null: false

      t.timestamps null: false
    end

    add_reference :books, :genre, index: true,
                  foreign_key: { on_delete: :cascade }
  end
end
