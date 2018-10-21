require 'test_helper'

class RedencionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redencione = redenciones(:one)
  end

  test "should get index" do
    get redenciones_url
    assert_response :success
  end

  test "should get new" do
    get new_redencione_url
    assert_response :success
  end

  test "should create redencione" do
    assert_difference('Redencione.count') do
      post redenciones_url, params: { redencione: { Cantidadpremio: @redencione.Cantidadpremio, detalleparametros_id: @redencione.detalleparametros_id, disponible: @redencione.disponible, fecharedencion: @redencione.fecharedencion, idusuario: @redencione.idusuario, nota: @redencione.nota } }
    end

    assert_redirected_to redencione_url(Redencione.last)
  end

  test "should show redencione" do
    get redencione_url(@redencione)
    assert_response :success
  end

  test "should get edit" do
    get edit_redencione_url(@redencione)
    assert_response :success
  end

  test "should update redencione" do
    patch redencione_url(@redencione), params: { redencione: { Cantidadpremio: @redencione.Cantidadpremio, detalleparametros_id: @redencione.detalleparametros_id, disponible: @redencione.disponible, fecharedencion: @redencione.fecharedencion, idusuario: @redencione.idusuario, nota: @redencione.nota } }
    assert_redirected_to redencione_url(@redencione)
  end

  test "should destroy redencione" do
    assert_difference('Redencione.count', -1) do
      delete redencione_url(@redencione)
    end

    assert_redirected_to redenciones_url
  end
end
