require "test_helper"

class AssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get assets_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_url
    assert_response :success
  end

  test "should create asset" do
    assert_difference("Asset.count") do
      post assets_url, params: { asset: { asset_type_id: @asset.asset_type_id, capacidad_DD1: @asset.capacidad_DD1, capacidad_DD2: @asset.capacidad_DD2, fecha_fin_garantia: @asset.fecha_fin_garantia, fecha_inicio_garantia: @asset.fecha_inicio_garantia, marca: @asset.marca, modelo: @asset.modelo, observaciones: @asset.observaciones, serial: @asset.serial, status: @asset.status, tecnologia_DD1: @asset.tecnologia_DD1, tecnologia_DD2: @asset.tecnologia_DD2, url_factura: @asset.url_factura } }
    end

    assert_redirected_to asset_url(Asset.last)
  end

  test "should show asset" do
    get asset_url(@asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_url(@asset)
    assert_response :success
  end

  test "should update asset" do
    patch asset_url(@asset), params: { asset: { asset_type_id: @asset.asset_type_id, capacidad_DD1: @asset.capacidad_DD1, capacidad_DD2: @asset.capacidad_DD2, fecha_fin_garantia: @asset.fecha_fin_garantia, fecha_inicio_garantia: @asset.fecha_inicio_garantia, marca: @asset.marca, modelo: @asset.modelo, observaciones: @asset.observaciones, serial: @asset.serial, status: @asset.status, tecnologia_DD1: @asset.tecnologia_DD1, tecnologia_DD2: @asset.tecnologia_DD2, url_factura: @asset.url_factura } }
    assert_redirected_to asset_url(@asset)
  end

  test "should destroy asset" do
    assert_difference("Asset.count", -1) do
      delete asset_url(@asset)
    end

    assert_redirected_to assets_url
  end
end
