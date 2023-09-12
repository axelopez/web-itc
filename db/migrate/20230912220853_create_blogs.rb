class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :titulo
      t.text :contenido
      t.string :estado
      t.text :comentarios
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
