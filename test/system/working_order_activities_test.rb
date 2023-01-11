require "application_system_test_case"

class WorkingOrderActivitiesTest < ApplicationSystemTestCase
  setup do
    @working_order_activity = working_order_activities(:one)
  end

  test "visiting the index" do
    visit working_order_activities_url
    assert_selector "h1", text: "Working order activities"
  end

  test "should create working order activity" do
    visit working_order_activities_url
    click_on "New working order activity"

    fill_in "Fecha hora", with: @working_order_activity.fecha_hora
    fill_in "Id orden servicio", with: @working_order_activity.id_orden_servicio
    fill_in "Observaciones", with: @working_order_activity.observaciones
    fill_in "Working order", with: @working_order_activity.working_order_id
    click_on "Create Working order activity"

    assert_text "Working order activity was successfully created"
    click_on "Back"
  end

  test "should update Working order activity" do
    visit working_order_activity_url(@working_order_activity)
    click_on "Edit this working order activity", match: :first

    fill_in "Fecha hora", with: @working_order_activity.fecha_hora
    fill_in "Id orden servicio", with: @working_order_activity.id_orden_servicio
    fill_in "Observaciones", with: @working_order_activity.observaciones
    fill_in "Working order", with: @working_order_activity.working_order_id
    click_on "Update Working order activity"

    assert_text "Working order activity was successfully updated"
    click_on "Back"
  end

  test "should destroy Working order activity" do
    visit working_order_activity_url(@working_order_activity)
    click_on "Destroy this working order activity", match: :first

    assert_text "Working order activity was successfully destroyed"
  end
end
