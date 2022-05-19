require "application_system_test_case"

class AssetsTest < ApplicationSystemTestCase
  setup do
    @asset = assets(:one)
  end

  test "visiting the index" do
    visit assets_url
    assert_selector "h1", text: "Assets"
  end

  test "should create asset" do
    visit assets_url
    click_on "New asset"

    fill_in "Asset type", with: @asset.asset_type_id
    fill_in "Capacidad dd1", with: @asset.capacidad_DD1
    fill_in "Capacidad dd2", with: @asset.capacidad_DD2
    fill_in "Fecha fin garantia", with: @asset.fecha_fin_garantia
    fill_in "Fecha inicio garantia", with: @asset.fecha_inicio_garantia
    fill_in "Marca", with: @asset.marca
    fill_in "Modelo", with: @asset.modelo
    fill_in "Observaciones", with: @asset.observaciones
    fill_in "Serial", with: @asset.serial
    fill_in "Status", with: @asset.status
    fill_in "Tecnologia dd1", with: @asset.tecnologia_DD1
    fill_in "Tecnologia dd2", with: @asset.tecnologia_DD2
    fill_in "Url factura", with: @asset.url_factura
    click_on "Create Asset"

    assert_text "Asset was successfully created"
    click_on "Back"
  end

  test "should update Asset" do
    visit asset_url(@asset)
    click_on "Edit this asset", match: :first

    fill_in "Asset type", with: @asset.asset_type_id
    fill_in "Capacidad dd1", with: @asset.capacidad_DD1
    fill_in "Capacidad dd2", with: @asset.capacidad_DD2
    fill_in "Fecha fin garantia", with: @asset.fecha_fin_garantia
    fill_in "Fecha inicio garantia", with: @asset.fecha_inicio_garantia
    fill_in "Marca", with: @asset.marca
    fill_in "Modelo", with: @asset.modelo
    fill_in "Observaciones", with: @asset.observaciones
    fill_in "Serial", with: @asset.serial
    fill_in "Status", with: @asset.status
    fill_in "Tecnologia dd1", with: @asset.tecnologia_DD1
    fill_in "Tecnologia dd2", with: @asset.tecnologia_DD2
    fill_in "Url factura", with: @asset.url_factura
    click_on "Update Asset"

    assert_text "Asset was successfully updated"
    click_on "Back"
  end

  test "should destroy Asset" do
    visit asset_url(@asset)
    click_on "Destroy this asset", match: :first

    assert_text "Asset was successfully destroyed"
  end
end
