require 'test_helper'

class DetalleparametrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalleparametro = detalleparametros(:one)
  end

  test "should get index" do
    get detalleparametros_url
    assert_response :success
  end

  test "should get new" do
    get new_detalleparametro_url
    assert_response :success
  end

  test "should create detalleparametro" do
    assert_difference('Detalleparametro.count') do
      post detalleparametros_url, params: { detalleparametro: { iddetalleparametro: @detalleparametro.iddetalleparametro, idparametro: @detalleparametro.idparametro, nombre: @detalleparametro.nombre } }
    end

    assert_redirected_to detalleparametro_url(Detalleparametro.last)
  end

  test "should show detalleparametro" do
    get detalleparametro_url(@detalleparametro)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalleparametro_url(@detalleparametro)
    assert_response :success
  end

  test "should update detalleparametro" do
    patch detalleparametro_url(@detalleparametro), params: { detalleparametro: { iddetalleparametro: @detalleparametro.iddetalleparametro, idparametro: @detalleparametro.idparametro, nombre: @detalleparametro.nombre } }
    assert_redirected_to detalleparametro_url(@detalleparametro)
  end

  test "should destroy detalleparametro" do
    assert_difference('Detalleparametro.count', -1) do
      delete detalleparametro_url(@detalleparametro)
    end

    assert_redirected_to detalleparametros_url
  end
end
