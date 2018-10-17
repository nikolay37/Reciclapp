require 'test_helper'

class RedencionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redencion = redencions(:one)
  end

  test "should get index" do
    get redencions_url
    assert_response :success
  end

  test "should get new" do
    get new_redencion_url
    assert_response :success
  end

  test "should create redencion" do
    assert_difference('Redencion.count') do
      post redencions_url, params: { redencion: { Cantidadpremio: @redencion.Cantidadpremio, detalleparametros_id: @redencion.detalleparametros_id, disponible: @redencion.disponible, fecharedencion: @redencion.fecharedencion, idusuario: @redencion.idusuario, nota: @redencion.nota } }
    end

    assert_redirected_to redencion_url(Redencion.last)
  end

  test "should show redencion" do
    get redencion_url(@redencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_redencion_url(@redencion)
    assert_response :success
  end

  test "should update redencion" do
    patch redencion_url(@redencion), params: { redencion: { Cantidadpremio: @redencion.Cantidadpremio, detalleparametros_id: @redencion.detalleparametros_id, disponible: @redencion.disponible, fecharedencion: @redencion.fecharedencion, idusuario: @redencion.idusuario, nota: @redencion.nota } }
    assert_redirected_to redencion_url(@redencion)
  end

  test "should destroy redencion" do
    assert_difference('Redencion.count', -1) do
      delete redencion_url(@redencion)
    end

    assert_redirected_to redencions_url
  end
end
