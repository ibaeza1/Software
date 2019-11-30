json.extract! comentario, :id, :restaurante_o_plato, :usuario, :fecha_y_hora, :contenido, :puntaje_de_reputacion, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
