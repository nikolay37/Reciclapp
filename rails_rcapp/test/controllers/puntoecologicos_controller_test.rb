require 'test_helper'

class PuntoecologicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puntoecologico = puntoecologicos(:one)
  end

  test "should get index" do
    get puntoecologicos_url
    assert_response :success
  end

  test "should get new" do
    get new_puntoecologico_url
    assert_response :success
  end

  test "should create puntoecologico" do
    assert_difference('Puntoecologico.count') do
      post puntoecologicos_url, params: { puntoecologico: { fechacierre: @puntoecologico.fechacierre, fechainicio: @puntoecologico.fechainicio, idresponsable: @puntoecologico.idresponsable, nombre: @puntoecologico.nombre, ubicacionx: @puntoecologico.ubicacionx, ubicaciony: @puntoecologico.ubicaciony } }
    end

    assert_redirected_to puntoecologico_url(Puntoecologico.last)
  end

  test "should show puntoecologico" do
    get puntoecologico_url(@puntoecologico)
    assert_response :success
  end

  test "should get edit" do
    get edit_puntoecologico_url(@puntoecologico)
    assert_response :success
  end

  test "should update puntoecologico" do
    patch puntoecologico_url(@puntoecologico), params: { puntoecologico: { fechacierre: @puntoecologico.fechacierre, fechainicio: @puntoecologico.fechainicio, idresponsable: @puntoecologico.idresponsable, nombre: @puntoecologico.nombre, ubicacionx: @puntoecologico.ubicacionx, ubicaciony: @puntoecologico.ubicaciony } }
    assert_redirected_to puntoecologico_url(@puntoecologico)
  end

  test "should destroy puntoecologico" do
    assert_difference('Puntoecologico.count', -1) do
      delete puntoecologico_url(@puntoecologico)
    end

    assert_redirected_to puntoecologicos_url
  end
end
