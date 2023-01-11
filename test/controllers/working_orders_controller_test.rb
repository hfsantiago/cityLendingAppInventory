require "test_helper"

class WorkingOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working_order = working_orders(:one)
  end

  test "should get index" do
    get working_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_working_order_url
    assert_response :success
  end

  test "should create working_order" do
    assert_difference("WorkingOrder.count") do
      post working_orders_url, params: { working_order: { asset_id: @working_order.asset_id, diagnostico_notas: @working_order.diagnostico_notas, fecha_hora_apertura: @working_order.fecha_hora_apertura, fecha_hora_cierre: @working_order.fecha_hora_cierre, id_empleado_tecnico: @working_order.id_empleado_tecnico, url_imagenes: @working_order.url_imagenes } }
    end

    assert_redirected_to working_order_url(WorkingOrder.last)
  end

  test "should show working_order" do
    get working_order_url(@working_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_order_url(@working_order)
    assert_response :success
  end

  test "should update working_order" do
    patch working_order_url(@working_order), params: { working_order: { asset_id: @working_order.asset_id, diagnostico_notas: @working_order.diagnostico_notas, fecha_hora_apertura: @working_order.fecha_hora_apertura, fecha_hora_cierre: @working_order.fecha_hora_cierre, id_empleado_tecnico: @working_order.id_empleado_tecnico, url_imagenes: @working_order.url_imagenes } }
    assert_redirected_to working_order_url(@working_order)
  end

  test "should destroy working_order" do
    assert_difference("WorkingOrder.count", -1) do
      delete working_order_url(@working_order)
    end

    assert_redirected_to working_orders_url
  end
end
