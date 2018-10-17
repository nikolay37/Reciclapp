require 'test_helper'

class VentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ventum = venta(:one)
  end

  test "should get index" do
    get venta_url
    assert_response :success
  end

  test "should get new" do
    get new_ventum_url
    assert_response :success
  end

  test "should create ventum" do
    assert_difference('Ventum.count') do
      post venta_url, params: { ventum: { cantidad: @ventum.cantidad, comprador: @ventum.comprador, detalleparametros_id: @ventum.detalleparametros_id, donacion: @ventum.donacion, fechaventa: @ventum.fechaventa, redencions_id: @ventum.redencions_id, total: @ventum.total, valorunidad: @ventum.valorunidad } }
    end

    assert_redirected_to ventum_url(Ventum.last)
  end

  test "should show ventum" do
    get ventum_url(@ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ventum_url(@ventum)
    assert_response :success
  end

  test "should update ventum" do
    patch ventum_url(@ventum), params: { ventum: { cantidad: @ventum.cantidad, comprador: @ventum.comprador, detalleparametros_id: @ventum.detalleparametros_id, donacion: @ventum.donacion, fechaventa: @ventum.fechaventa, redencions_id: @ventum.redencions_id, total: @ventum.total, valorunidad: @ventum.valorunidad } }
    assert_redirected_to ventum_url(@ventum)
  end

  test "should destroy ventum" do
    assert_difference('Ventum.count', -1) do
      delete ventum_url(@ventum)
    end

    assert_redirected_to venta_url
  end
end
