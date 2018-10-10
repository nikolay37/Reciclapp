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
      post venta_url, params: { ventum: { cantidad: @ventum.cantidad, donacion: @ventum.donacion, fechaventa: @ventum.fechaventa, iddetalleparametro: @ventum.iddetalleparametro, idpuntoecologico: @ventum.idpuntoecologico, idventas: @ventum.idventas, valor: @ventum.valor } }
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
    patch ventum_url(@ventum), params: { ventum: { cantidad: @ventum.cantidad, donacion: @ventum.donacion, fechaventa: @ventum.fechaventa, iddetalleparametro: @ventum.iddetalleparametro, idpuntoecologico: @ventum.idpuntoecologico, idventas: @ventum.idventas, valor: @ventum.valor } }
    assert_redirected_to ventum_url(@ventum)
  end

  test "should destroy ventum" do
    assert_difference('Ventum.count', -1) do
      delete ventum_url(@ventum)
    end

    assert_redirected_to venta_url
  end
end
