require 'test_helper'

class ComentariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comentario = comentarios(:one)
  end

  test "should get index" do
    get comentarios_url
    assert_response :success
  end

  test "should get new" do
    get new_comentario_url
    assert_response :success
  end

  test "should create comentario" do
    assert_difference('Comentario.count') do
      post comentarios_url, params: { comentario: { contenido: @comentario.contenido, fecha_y_hora: @comentario.fecha_y_hora, puntaje_de_reputacion: @comentario.puntaje_de_reputacion, restaurante_o_plato: @comentario.restaurante_o_plato, usuario: @comentario.usuario } }
    end

    assert_redirected_to comentario_url(Comentario.last)
  end

  test "should show comentario" do
    get comentario_url(@comentario)
    assert_response :success
  end

  test "should get edit" do
    get edit_comentario_url(@comentario)
    assert_response :success
  end

  test "should update comentario" do
    patch comentario_url(@comentario), params: { comentario: { contenido: @comentario.contenido, fecha_y_hora: @comentario.fecha_y_hora, puntaje_de_reputacion: @comentario.puntaje_de_reputacion, restaurante_o_plato: @comentario.restaurante_o_plato, usuario: @comentario.usuario } }
    assert_redirected_to comentario_url(@comentario)
  end

  test "should destroy comentario" do
    assert_difference('Comentario.count', -1) do
      delete comentario_url(@comentario)
    end

    assert_redirected_to comentarios_url
  end
end
