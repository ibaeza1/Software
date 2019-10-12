require "application_system_test_case"

class OrdenesTest < ApplicationSystemTestCase
  setup do
    @ordene = ordenes(:one)
  end

  test "visiting the index" do
    visit ordenes_url
    assert_selector "h1", text: "Ordenes"
  end

  test "creating a Ordene" do
    visit ordenes_url
    click_on "New Ordene"

    fill_in "Direccion de envio", with: @ordene.direccion_de_envio
    fill_in "Estado del pedido", with: @ordene.estado_del_pedido
    fill_in "Hora estimada de entrega", with: @ordene.hora_estimada_de_entrega
    fill_in "Medio de pago", with: @ordene.medio_de_pago
    fill_in "Notas", with: @ordene.notas
    fill_in "Platos pedidos en la orden", with: @ordene.platos_pedidos_en_la_orden
    fill_in "Precio final a pagar", with: @ordene.precio_final_a_pagar
    click_on "Create Ordene"

    assert_text "Ordene was successfully created"
    click_on "Back"
  end

  test "updating a Ordene" do
    visit ordenes_url
    click_on "Edit", match: :first

    fill_in "Direccion de envio", with: @ordene.direccion_de_envio
    fill_in "Estado del pedido", with: @ordene.estado_del_pedido
    fill_in "Hora estimada de entrega", with: @ordene.hora_estimada_de_entrega
    fill_in "Medio de pago", with: @ordene.medio_de_pago
    fill_in "Notas", with: @ordene.notas
    fill_in "Platos pedidos en la orden", with: @ordene.platos_pedidos_en_la_orden
    fill_in "Precio final a pagar", with: @ordene.precio_final_a_pagar
    click_on "Update Ordene"

    assert_text "Ordene was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordene" do
    visit ordenes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordene was successfully destroyed"
  end
end
