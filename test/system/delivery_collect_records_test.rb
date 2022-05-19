require "application_system_test_case"

class DeliveryCollectRecordsTest < ApplicationSystemTestCase
  setup do
    @delivery_collect_record = delivery_collect_records(:one)
  end

  test "visiting the index" do
    visit delivery_collect_records_url
    assert_selector "h1", text: "Delivery collect records"
  end

  test "should create delivery collect record" do
    visit delivery_collect_records_url
    click_on "New delivery collect record"

    fill_in "Devolucion estado equipo", with: @delivery_collect_record.devolucion_estado_equipo
    fill_in "Devolucion observaciones", with: @delivery_collect_record.devolucion_observaciones
    fill_in "Employee", with: @delivery_collect_record.employee_id
    fill_in "Fecha", with: @delivery_collect_record.fecha
    check "Is delivery" if @delivery_collect_record.is_delivery
    fill_in "Nombre devuelve", with: @delivery_collect_record.nombre_devuelve
    fill_in "Nombre recibe", with: @delivery_collect_record.nombre_recibe
    click_on "Create Delivery collect record"

    assert_text "Delivery collect record was successfully created"
    click_on "Back"
  end

  test "should update Delivery collect record" do
    visit delivery_collect_record_url(@delivery_collect_record)
    click_on "Edit this delivery collect record", match: :first

    fill_in "Devolucion estado equipo", with: @delivery_collect_record.devolucion_estado_equipo
    fill_in "Devolucion observaciones", with: @delivery_collect_record.devolucion_observaciones
    fill_in "Employee", with: @delivery_collect_record.employee_id
    fill_in "Fecha", with: @delivery_collect_record.fecha
    check "Is delivery" if @delivery_collect_record.is_delivery
    fill_in "Nombre devuelve", with: @delivery_collect_record.nombre_devuelve
    fill_in "Nombre recibe", with: @delivery_collect_record.nombre_recibe
    click_on "Update Delivery collect record"

    assert_text "Delivery collect record was successfully updated"
    click_on "Back"
  end

  test "should destroy Delivery collect record" do
    visit delivery_collect_record_url(@delivery_collect_record)
    click_on "Destroy this delivery collect record", match: :first

    assert_text "Delivery collect record was successfully destroyed"
  end
end
