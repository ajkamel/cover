class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.text :biography, null: false
      t.references :books, :author, index: true, on_delete: :cascade

      t.timestamps null: false
    end
  end
end
