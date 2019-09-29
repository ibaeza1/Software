class AddNewValuesToRestaurantes < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurantes, :titulo, :text
    add_column :restaurantes, :correo, :string
    add_column :restaurantes, :direccion, :string
    add_column :restaurantes, :valoracion, :integer
    add_column :restaurantes, :telefono, :string
    add_column :restaurantes, :url, :string
  end
end
