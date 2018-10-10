require "application_system_test_case"

class RecoleccionsTest < ApplicationSystemTestCase
  setup do
    @recoleccion = recoleccions(:one)
  end

  test "visiting the index" do
    visit recoleccions_url
    assert_selector "h1", text: "Recoleccions"
  end

  test "creating a Recoleccion" do
    visit recoleccions_url
    click_on "New Recoleccion"

    fill_in "Cantidad", with: @recoleccion.Cantidad
    fill_in "Estado", with: @recoleccion.Estado
    fill_in "Fecha", with: @recoleccion.Fecha
    fill_in "Idretousuario", with: @recoleccion.Idretousuario
    fill_in "Iddetalleparametro", with: @recoleccion.iddetalleparametro
    fill_in "Idpuntorecoleccion", with: @recoleccion.idpuntorecoleccion
    fill_in "Idrecoleccion", with: @recoleccion.idrecoleccion
    fill_in "Idredencion", with: @recoleccion.idredencion
    fill_in "Idusu Invitado", with: @recoleccion.idusu_invitado
    click_on "Create Recoleccion"

    assert_text "Recoleccion was successfully created"
    click_on "Back"
  end

  test "updating a Recoleccion" do
    visit recoleccions_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @recoleccion.Cantidad
    fill_in "Estado", with: @recoleccion.Estado
    fill_in "Fecha", with: @recoleccion.Fecha
    fill_in "Idretousuario", with: @recoleccion.Idretousuario
    fill_in "Iddetalleparametro", with: @recoleccion.iddetalleparametro
    fill_in "Idpuntorecoleccion", with: @recoleccion.idpuntorecoleccion
    fill_in "Idrecoleccion", with: @recoleccion.idrecoleccion
    fill_in "Idredencion", with: @recoleccion.idredencion
    fill_in "Idusu Invitado", with: @recoleccion.idusu_invitado
    click_on "Update Recoleccion"

    assert_text "Recoleccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Recoleccion" do
    visit recoleccions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recoleccion was successfully destroyed"
  end
end
