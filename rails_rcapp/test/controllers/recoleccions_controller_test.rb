require 'test_helper'

class RecoleccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recoleccion = recoleccions(:one)
  end

  test "should get index" do
    get recoleccions_url
    assert_response :success
  end

  test "should get new" do
    get new_recoleccion_url
    assert_response :success
  end

  test "should create recoleccion" do
    assert_difference('Recoleccion.count') do
      post recoleccions_url, params: { recoleccion: { cantidad: @recoleccion.cantidad, detalleparametro_id: @recoleccion.detalleparametro_id, estado: @recoleccion.estado, fecha: @recoleccion.fecha, iddetalleparametro: @recoleccion.iddetalleparametro, idpuntorecoleccion: @recoleccion.idpuntorecoleccion, idredencion: @recoleccion.idredencion, idusu_invitado: @recoleccion.idusu_invitado, idventa: @recoleccion.idventa, retousuario_id: @recoleccion.retousuario_id } }
    end

    assert_redirected_to recoleccion_url(Recoleccion.last)
  end

  test "should show recoleccion" do
    get recoleccion_url(@recoleccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_recoleccion_url(@recoleccion)
    assert_response :success
  end

  test "should update recoleccion" do
    patch recoleccion_url(@recoleccion), params: { recoleccion: { cantidad: @recoleccion.cantidad, detalleparametro_id: @recoleccion.detalleparametro_id, estado: @recoleccion.estado, fecha: @recoleccion.fecha, iddetalleparametro: @recoleccion.iddetalleparametro, idpuntorecoleccion: @recoleccion.idpuntorecoleccion, idredencion: @recoleccion.idredencion, idusu_invitado: @recoleccion.idusu_invitado, idventa: @recoleccion.idventa, retousuario_id: @recoleccion.retousuario_id } }
    assert_redirected_to recoleccion_url(@recoleccion)
  end

  test "should destroy recoleccion" do
    assert_difference('Recoleccion.count', -1) do
      delete recoleccion_url(@recoleccion)
    end

    assert_redirected_to recoleccions_url
  end
end
