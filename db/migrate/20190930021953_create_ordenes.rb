class CreateOrdenes < ActiveRecord::Migration[5.2]
  def change
    create_table :ordenes do |t|
      t.string :platos_pedidos_en_la_orden
      t.decimal :precio_final_a_pagar
      t.string :medio_de_pago
      t.string :direccion_de_envio
      t.time :hora_estimada_de_entrega
      t.string :estado_del_pedido
      t.text :notas

      t.timestamps
    end
  end
end
