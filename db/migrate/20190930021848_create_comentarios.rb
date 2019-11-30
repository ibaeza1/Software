class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.string :restaurante_o_plato
      t.string :usuario
      t.datetime :fecha_y_hora
      t.text :contenido
      t.decimal :puntaje_de_reputacion

      t.timestamps
    end
  end
end
