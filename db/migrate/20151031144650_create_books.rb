class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :description
      t.string :cover_image_url

      t.timestamps null: false
    end
  end
end
