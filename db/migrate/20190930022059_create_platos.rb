class CreatePlatos < ActiveRecord::Migration[5.2]
  def change
    create_table :platos do |t|
      t.string :nombre
      t.decimal :precio
      t.text :descripcion
      t.integer :cantidad_de_personas_sugeridas
      t.integer :valoracion

      t.timestamps
    end
  end
end
