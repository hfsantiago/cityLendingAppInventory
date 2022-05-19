require "test_helper"

class DeliveryCollectRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_collect_record = delivery_collect_records(:one)
  end

  test "should get index" do
    get delivery_collect_records_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_collect_record_url
    assert_response :success
  end

  test "should create delivery_collect_record" do
    assert_difference("DeliveryCollectRecord.count") do
      post delivery_collect_records_url, params: { delivery_collect_record: { devolucion_estado_equipo: @delivery_collect_record.devolucion_estado_equipo, devolucion_observaciones: @delivery_collect_record.devolucion_observaciones, employee_id: @delivery_collect_record.employee_id, fecha: @delivery_collect_record.fecha, is_delivery: @delivery_collect_record.is_delivery, nombre_devuelve: @delivery_collect_record.nombre_devuelve, nombre_recibe: @delivery_collect_record.nombre_recibe } }
    end

    assert_redirected_to delivery_collect_record_url(DeliveryCollectRecord.last)
  end

  test "should show delivery_collect_record" do
    get delivery_collect_record_url(@delivery_collect_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_collect_record_url(@delivery_collect_record)
    assert_response :success
  end

  test "should update delivery_collect_record" do
    patch delivery_collect_record_url(@delivery_collect_record), params: { delivery_collect_record: { devolucion_estado_equipo: @delivery_collect_record.devolucion_estado_equipo, devolucion_observaciones: @delivery_collect_record.devolucion_observaciones, employee_id: @delivery_collect_record.employee_id, fecha: @delivery_collect_record.fecha, is_delivery: @delivery_collect_record.is_delivery, nombre_devuelve: @delivery_collect_record.nombre_devuelve, nombre_recibe: @delivery_collect_record.nombre_recibe } }
    assert_redirected_to delivery_collect_record_url(@delivery_collect_record)
  end

  test "should destroy delivery_collect_record" do
    assert_difference("DeliveryCollectRecord.count", -1) do
      delete delivery_collect_record_url(@delivery_collect_record)
    end

    assert_redirected_to delivery_collect_records_url
  end
end
