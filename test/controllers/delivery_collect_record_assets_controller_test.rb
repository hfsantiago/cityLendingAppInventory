require "test_helper"

class DeliveryCollectRecordAssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_collect_record_asset = delivery_collect_record_assets(:one)
  end

  test "should get index" do
    get delivery_collect_record_assets_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_collect_record_asset_url
    assert_response :success
  end

  test "should create delivery_collect_record_asset" do
    assert_difference("DeliveryCollectRecordAsset.count") do
      post delivery_collect_record_assets_url, params: { delivery_collect_record_asset: { asset_id: @delivery_collect_record_asset.asset_id, delivery_collect_record_id: @delivery_collect_record_asset.delivery_collect_record_id } }
    end

    assert_redirected_to delivery_collect_record_asset_url(DeliveryCollectRecordAsset.last)
  end

  test "should show delivery_collect_record_asset" do
    get delivery_collect_record_asset_url(@delivery_collect_record_asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_collect_record_asset_url(@delivery_collect_record_asset)
    assert_response :success
  end

  test "should update delivery_collect_record_asset" do
    patch delivery_collect_record_asset_url(@delivery_collect_record_asset), params: { delivery_collect_record_asset: { asset_id: @delivery_collect_record_asset.asset_id, delivery_collect_record_id: @delivery_collect_record_asset.delivery_collect_record_id } }
    assert_redirected_to delivery_collect_record_asset_url(@delivery_collect_record_asset)
  end

  test "should destroy delivery_collect_record_asset" do
    assert_difference("DeliveryCollectRecordAsset.count", -1) do
      delete delivery_collect_record_asset_url(@delivery_collect_record_asset)
    end

    assert_redirected_to delivery_collect_record_assets_url
  end
end
