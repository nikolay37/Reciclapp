require 'test_helper'

class VentagananciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ventaganancium = ventaganancia(:one)
  end

  test "should get index" do
    get ventaganancia_url
    assert_response :success
  end

  test "should get new" do
    get new_ventaganancium_url
    assert_response :success
  end

  test "should create ventaganancium" do
    assert_difference('Ventaganancium.count') do
      post ventaganancia_url, params: { ventaganancium: { cantidad: @ventaganancium.cantidad, comprador: @ventaganancium.comprador, detalleparametros_id: @ventaganancium.detalleparametros_id, donacion: @ventaganancium.donacion, fechaventa: @ventaganancium.fechaventa, redenciones_id: @ventaganancium.redenciones_id, total: @ventaganancium.total, valorunidad: @ventaganancium.valorunidad } }
    end

    assert_redirected_to ventaganancium_url(Ventaganancium.last)
  end

  test "should show ventaganancium" do
    get ventaganancium_url(@ventaganancium)
    assert_response :success
  end

  test "should get edit" do
    get edit_ventaganancium_url(@ventaganancium)
    assert_response :success
  end

  test "should update ventaganancium" do
    patch ventaganancium_url(@ventaganancium), params: { ventaganancium: { cantidad: @ventaganancium.cantidad, comprador: @ventaganancium.comprador, detalleparametros_id: @ventaganancium.detalleparametros_id, donacion: @ventaganancium.donacion, fechaventa: @ventaganancium.fechaventa, redenciones_id: @ventaganancium.redenciones_id, total: @ventaganancium.total, valorunidad: @ventaganancium.valorunidad } }
    assert_redirected_to ventaganancium_url(@ventaganancium)
  end

  test "should destroy ventaganancium" do
    assert_difference('Ventaganancium.count', -1) do
      delete ventaganancium_url(@ventaganancium)
    end

    assert_redirected_to ventaganancia_url
  end
end
