class AddDescripcionToBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :descripcion, :string
  end
end
