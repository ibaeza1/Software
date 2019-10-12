require 'test_helper'

class OrdenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordene = ordenes(:one)
  end

  test "should get index" do
    get ordenes_url
    assert_response :success
  end

  test "should get new" do
    get new_ordene_url
    assert_response :success
  end

  test "should create ordene" do
    assert_difference('Ordene.count') do
      post ordenes_url, params: { ordene: { direccion_de_envio: @ordene.direccion_de_envio, estado_del_pedido: @ordene.estado_del_pedido, hora_estimada_de_entrega: @ordene.hora_estimada_de_entrega, medio_de_pago: @ordene.medio_de_pago, notas: @ordene.notas, platos_pedidos_en_la_orden: @ordene.platos_pedidos_en_la_orden, precio_final_a_pagar: @ordene.precio_final_a_pagar } }
    end

    assert_redirected_to ordene_url(Ordene.last)
  end

  test "should show ordene" do
    get ordene_url(@ordene)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordene_url(@ordene)
    assert_response :success
  end

  test "should update ordene" do
    patch ordene_url(@ordene), params: { ordene: { direccion_de_envio: @ordene.direccion_de_envio, estado_del_pedido: @ordene.estado_del_pedido, hora_estimada_de_entrega: @ordene.hora_estimada_de_entrega, medio_de_pago: @ordene.medio_de_pago, notas: @ordene.notas, platos_pedidos_en_la_orden: @ordene.platos_pedidos_en_la_orden, precio_final_a_pagar: @ordene.precio_final_a_pagar } }
    assert_redirected_to ordene_url(@ordene)
  end

  test "should destroy ordene" do
    assert_difference('Ordene.count', -1) do
      delete ordene_url(@ordene)
    end

    assert_redirected_to ordenes_url
  end
end
