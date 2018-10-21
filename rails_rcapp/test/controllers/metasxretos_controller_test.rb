require 'test_helper'

class MetasxretosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metasxreto = metasxretos(:one)
  end

  test "should get index" do
    get metasxretos_url
    assert_response :success
  end

  test "should get new" do
    get new_metasxreto_url
    assert_response :success
  end

  test "should create metasxreto" do
    assert_difference('Metasxreto.count') do
      post metasxretos_url, params: { metasxreto: { cantidad: @metasxreto.cantidad, detalleparametros_id: @metasxreto.detalleparametros_id, fechaexpiracion: @metasxreto.fechaexpiracion, nota: @metasxreto.nota, retos_id: @metasxreto.retos_id } }
    end

    assert_redirected_to metasxreto_url(Metasxreto.last)
  end

  test "should show metasxreto" do
    get metasxreto_url(@metasxreto)
    assert_response :success
  end

  test "should get edit" do
    get edit_metasxreto_url(@metasxreto)
    assert_response :success
  end

  test "should update metasxreto" do
    patch metasxreto_url(@metasxreto), params: { metasxreto: { cantidad: @metasxreto.cantidad, detalleparametros_id: @metasxreto.detalleparametros_id, fechaexpiracion: @metasxreto.fechaexpiracion, nota: @metasxreto.nota, retos_id: @metasxreto.retos_id } }
    assert_redirected_to metasxreto_url(@metasxreto)
  end

  test "should destroy metasxreto" do
    assert_difference('Metasxreto.count', -1) do
      delete metasxreto_url(@metasxreto)
    end

    assert_redirected_to metasxretos_url
  end
end
