require 'test_helper'

class RetousuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retousuario = retousuarios(:one)
  end

  test "should get index" do
    get retousuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_retousuario_url
    assert_response :success
  end

  test "should create retousuario" do
    assert_difference('Retousuario.count') do
      post retousuarios_url, params: { retousuario: { idreto: @retousuario.idreto, idusu_invitado: @retousuario.idusu_invitado, lema: @retousuario.lema } }
    end

    assert_redirected_to retousuario_url(Retousuario.last)
  end

  test "should show retousuario" do
    get retousuario_url(@retousuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_retousuario_url(@retousuario)
    assert_response :success
  end

  test "should update retousuario" do
    patch retousuario_url(@retousuario), params: { retousuario: { idreto: @retousuario.idreto, idusu_invitado: @retousuario.idusu_invitado, lema: @retousuario.lema } }
    assert_redirected_to retousuario_url(@retousuario)
  end

  test "should destroy retousuario" do
    assert_difference('Retousuario.count', -1) do
      delete retousuario_url(@retousuario)
    end

    assert_redirected_to retousuarios_url
  end
end
