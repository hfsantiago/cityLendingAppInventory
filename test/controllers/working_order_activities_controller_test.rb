require "test_helper"

class WorkingOrderActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working_order_activity = working_order_activities(:one)
  end

  test "should get index" do
    get working_order_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_working_order_activity_url
    assert_response :success
  end

  test "should create working_order_activity" do
    assert_difference("WorkingOrderActivity.count") do
      post working_order_activities_url, params: { working_order_activity: { fecha_hora: @working_order_activity.fecha_hora, id_orden_servicio: @working_order_activity.id_orden_servicio, observaciones: @working_order_activity.observaciones, working_order_id: @working_order_activity.working_order_id } }
    end

    assert_redirected_to working_order_activity_url(WorkingOrderActivity.last)
  end

  test "should show working_order_activity" do
    get working_order_activity_url(@working_order_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_order_activity_url(@working_order_activity)
    assert_response :success
  end

  test "should update working_order_activity" do
    patch working_order_activity_url(@working_order_activity), params: { working_order_activity: { fecha_hora: @working_order_activity.fecha_hora, id_orden_servicio: @working_order_activity.id_orden_servicio, observaciones: @working_order_activity.observaciones, working_order_id: @working_order_activity.working_order_id } }
    assert_redirected_to working_order_activity_url(@working_order_activity)
  end

  test "should destroy working_order_activity" do
    assert_difference("WorkingOrderActivity.count", -1) do
      delete working_order_activity_url(@working_order_activity)
    end

    assert_redirected_to working_order_activities_url
  end
end
