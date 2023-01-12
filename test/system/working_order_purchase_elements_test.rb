require "application_system_test_case"

class WorkingOrderPurchaseElementsTest < ApplicationSystemTestCase
  setup do
    @working_order_purchase_element = working_order_purchase_elements(:one)
  end

  test "visiting the index" do
    visit working_order_purchase_elements_url
    assert_selector "h1", text: "Working order purchase elements"
  end

  test "should create working order purchase element" do
    visit working_order_purchase_elements_url
    click_on "New working order purchase element"

    fill_in "Cantidad", with: @working_order_purchase_element.cantidad
    check "Comprado" if @working_order_purchase_element.comprado
    fill_in "Fecha compra", with: @working_order_purchase_element.fecha_compra
    fill_in "Fecha solicitud", with: @working_order_purchase_element.fecha_solicitud
    fill_in "Nombre elemento", with: @working_order_purchase_element.nombre_elemento
    fill_in "Observaciones", with: @working_order_purchase_element.observaciones
    fill_in "Url compra", with: @working_order_purchase_element.url_compra
    fill_in "Working order", with: @working_order_purchase_element.working_order_id
    click_on "Create Working order purchase element"

    assert_text "Working order purchase element was successfully created"
    click_on "Back"
  end

  test "should update Working order purchase element" do
    visit working_order_purchase_element_url(@working_order_purchase_element)
    click_on "Edit this working order purchase element", match: :first

    fill_in "Cantidad", with: @working_order_purchase_element.cantidad
    check "Comprado" if @working_order_purchase_element.comprado
    fill_in "Fecha compra", with: @working_order_purchase_element.fecha_compra
    fill_in "Fecha solicitud", with: @working_order_purchase_element.fecha_solicitud
    fill_in "Nombre elemento", with: @working_order_purchase_element.nombre_elemento
    fill_in "Observaciones", with: @working_order_purchase_element.observaciones
    fill_in "Url compra", with: @working_order_purchase_element.url_compra
    fill_in "Working order", with: @working_order_purchase_element.working_order_id
    click_on "Update Working order purchase element"

    assert_text "Working order purchase element was successfully updated"
    click_on "Back"
  end

  test "should destroy Working order purchase element" do
    visit working_order_purchase_element_url(@working_order_purchase_element)
    click_on "Destroy this working order purchase element", match: :first

    assert_text "Working order purchase element was successfully destroyed"
  end
end
