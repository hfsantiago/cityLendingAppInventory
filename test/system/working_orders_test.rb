require "application_system_test_case"

class WorkingOrdersTest < ApplicationSystemTestCase
  setup do
    @working_order = working_orders(:one)
  end

  test "visiting the index" do
    visit working_orders_url
    assert_selector "h1", text: "Working orders"
  end

  test "should create working order" do
    visit working_orders_url
    click_on "New working order"

    fill_in "Asset", with: @working_order.asset_id
    fill_in "Diagnostico notas", with: @working_order.diagnostico_notas
    fill_in "Fecha hora apertura", with: @working_order.fecha_hora_apertura
    fill_in "Fecha hora cierre", with: @working_order.fecha_hora_cierre
    fill_in "Id empleado tecnico", with: @working_order.id_empleado_tecnico
    fill_in "Url imagenes", with: @working_order.url_imagenes
    click_on "Create Working order"

    assert_text "Working order was successfully created"
    click_on "Back"
  end

  test "should update Working order" do
    visit working_order_url(@working_order)
    click_on "Edit this working order", match: :first

    fill_in "Asset", with: @working_order.asset_id
    fill_in "Diagnostico notas", with: @working_order.diagnostico_notas
    fill_in "Fecha hora apertura", with: @working_order.fecha_hora_apertura
    fill_in "Fecha hora cierre", with: @working_order.fecha_hora_cierre
    fill_in "Id empleado tecnico", with: @working_order.id_empleado_tecnico
    fill_in "Url imagenes", with: @working_order.url_imagenes
    click_on "Update Working order"

    assert_text "Working order was successfully updated"
    click_on "Back"
  end

  test "should destroy Working order" do
    visit working_order_url(@working_order)
    click_on "Destroy this working order", match: :first

    assert_text "Working order was successfully destroyed"
  end
end
