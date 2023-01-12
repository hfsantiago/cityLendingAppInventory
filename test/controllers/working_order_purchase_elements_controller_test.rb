require "test_helper"

class WorkingOrderPurchaseElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working_order_purchase_element = working_order_purchase_elements(:one)
  end

  test "should get index" do
    get working_order_purchase_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_working_order_purchase_element_url
    assert_response :success
  end

  test "should create working_order_purchase_element" do
    assert_difference("WorkingOrderPurchaseElement.count") do
      post working_order_purchase_elements_url, params: { working_order_purchase_element: { cantidad: @working_order_purchase_element.cantidad, comprado: @working_order_purchase_element.comprado, fecha_compra: @working_order_purchase_element.fecha_compra, fecha_solicitud: @working_order_purchase_element.fecha_solicitud, nombre_elemento: @working_order_purchase_element.nombre_elemento, observaciones: @working_order_purchase_element.observaciones, url_compra: @working_order_purchase_element.url_compra, working_order_id: @working_order_purchase_element.working_order_id } }
    end

    assert_redirected_to working_order_purchase_element_url(WorkingOrderPurchaseElement.last)
  end

  test "should show working_order_purchase_element" do
    get working_order_purchase_element_url(@working_order_purchase_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_order_purchase_element_url(@working_order_purchase_element)
    assert_response :success
  end

  test "should update working_order_purchase_element" do
    patch working_order_purchase_element_url(@working_order_purchase_element), params: { working_order_purchase_element: { cantidad: @working_order_purchase_element.cantidad, comprado: @working_order_purchase_element.comprado, fecha_compra: @working_order_purchase_element.fecha_compra, fecha_solicitud: @working_order_purchase_element.fecha_solicitud, nombre_elemento: @working_order_purchase_element.nombre_elemento, observaciones: @working_order_purchase_element.observaciones, url_compra: @working_order_purchase_element.url_compra, working_order_id: @working_order_purchase_element.working_order_id } }
    assert_redirected_to working_order_purchase_element_url(@working_order_purchase_element)
  end

  test "should destroy working_order_purchase_element" do
    assert_difference("WorkingOrderPurchaseElement.count", -1) do
      delete working_order_purchase_element_url(@working_order_purchase_element)
    end

    assert_redirected_to working_order_purchase_elements_url
  end
end
