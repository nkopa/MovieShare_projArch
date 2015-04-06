class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.integer :genre_id
      t.text :description

      t.timestamps null: false
    end
  end
end
