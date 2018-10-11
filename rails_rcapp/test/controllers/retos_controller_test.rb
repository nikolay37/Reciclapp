require 'test_helper'

class RetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reto = retos(:one)
  end

  test "should get index" do
    get retos_url
    assert_response :success
  end

  test "should get new" do
    get new_reto_url
    assert_response :success
  end

  test "should create reto" do
    assert_difference('Reto.count') do
      post retos_url, params: { reto: { idusuario_origina: @reto.idusuario_origina, nombre: @reto.nombre } }
    end

    assert_redirected_to reto_url(Reto.last)
  end

  test "should show reto" do
    get reto_url(@reto)
    assert_response :success
  end

  test "should get edit" do
    get edit_reto_url(@reto)
    assert_response :success
  end

  test "should update reto" do
    patch reto_url(@reto), params: { reto: { idusuario_origina: @reto.idusuario_origina, nombre: @reto.nombre } }
    assert_redirected_to reto_url(@reto)
  end

  test "should destroy reto" do
    assert_difference('Reto.count', -1) do
      delete reto_url(@reto)
    end

    assert_redirected_to retos_url
  end
end
