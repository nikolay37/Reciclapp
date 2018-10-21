require "application_system_test_case"

class RedencionesTest < ApplicationSystemTestCase
  setup do
    @redencione = redenciones(:one)
  end

  test "visiting the index" do
    visit redenciones_url
    assert_selector "h1", text: "Redenciones"
  end

  test "creating a Redencione" do
    visit redenciones_url
    click_on "New Redencione"

    fill_in "Cantidadpremio", with: @redencione.Cantidadpremio
    fill_in "Detalleparametros", with: @redencione.detalleparametros_id
    fill_in "Disponible", with: @redencione.disponible
    fill_in "Fecharedencion", with: @redencione.fecharedencion
    fill_in "Idusuario", with: @redencione.idusuario
    fill_in "Nota", with: @redencione.nota
    click_on "Create Redencione"

    assert_text "Redencione was successfully created"
    click_on "Back"
  end

  test "updating a Redencione" do
    visit redenciones_url
    click_on "Edit", match: :first

    fill_in "Cantidadpremio", with: @redencione.Cantidadpremio
    fill_in "Detalleparametros", with: @redencione.detalleparametros_id
    fill_in "Disponible", with: @redencione.disponible
    fill_in "Fecharedencion", with: @redencione.fecharedencion
    fill_in "Idusuario", with: @redencione.idusuario
    fill_in "Nota", with: @redencione.nota
    click_on "Update Redencione"

    assert_text "Redencione was successfully updated"
    click_on "Back"
  end

  test "destroying a Redencione" do
    visit redenciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Redencione was successfully destroyed"
  end
end
