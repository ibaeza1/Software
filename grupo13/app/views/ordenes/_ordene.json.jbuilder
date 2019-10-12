json.extract! ordene, :id, :platos_pedidos_en_la_orden, :precio_final_a_pagar, :medio_de_pago, :direccion_de_envio, :hora_estimada_de_entrega, :estado_del_pedido, :notas, :created_at, :updated_at
json.url ordene_url(ordene, format: :json)
