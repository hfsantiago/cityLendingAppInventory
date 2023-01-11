require "application_system_test_case"

class DeliveryCollectRecordAssetsTest < ApplicationSystemTestCase
  setup do
    @delivery_collect_record_asset = delivery_collect_record_assets(:one)
  end

  test "visiting the index" do
    visit delivery_collect_record_assets_url
    assert_selector "h1", text: "Delivery collect record assets"
  end

  test "should create delivery collect record asset" do
    visit delivery_collect_record_assets_url
    click_on "New delivery collect record asset"

    fill_in "Asset", with: @delivery_collect_record_asset.asset_id
    fill_in "Delivery collect record", with: @delivery_collect_record_asset.delivery_collect_record_id
    click_on "Create Delivery collect record asset"

    assert_text "Delivery collect record asset was successfully created"
    click_on "Back"
  end

  test "should update Delivery collect record asset" do
    visit delivery_collect_record_asset_url(@delivery_collect_record_asset)
    click_on "Edit this delivery collect record asset", match: :first

    fill_in "Asset", with: @delivery_collect_record_asset.asset_id
    fill_in "Delivery collect record", with: @delivery_collect_record_asset.delivery_collect_record_id
    click_on "Update Delivery collect record asset"

    assert_text "Delivery collect record asset was successfully updated"
    click_on "Back"
  end

  test "should destroy Delivery collect record asset" do
    visit delivery_collect_record_asset_url(@delivery_collect_record_asset)
    click_on "Destroy this delivery collect record asset", match: :first

    assert_text "Delivery collect record asset was successfully destroyed"
  end
end
