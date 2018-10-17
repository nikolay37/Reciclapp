require "application_system_test_case"

class RedencionsTest < ApplicationSystemTestCase
  setup do
    @redencion = redencions(:one)
  end

  test "visiting the index" do
    visit redencions_url
    assert_selector "h1", text: "Redencions"
  end

  test "creating a Redencion" do
    visit redencions_url
    click_on "New Redencion"

    fill_in "Cantidadpremio", with: @redencion.Cantidadpremio
    fill_in "Detalleparametros", with: @redencion.detalleparametros_id
    fill_in "Disponible", with: @redencion.disponible
    fill_in "Fecharedencion", with: @redencion.fecharedencion
    fill_in "Idusuario", with: @redencion.idusuario
    fill_in "Nota", with: @redencion.nota
    click_on "Create Redencion"

    assert_text "Redencion was successfully created"
    click_on "Back"
  end

  test "updating a Redencion" do
    visit redencions_url
    click_on "Edit", match: :first

    fill_in "Cantidadpremio", with: @redencion.Cantidadpremio
    fill_in "Detalleparametros", with: @redencion.detalleparametros_id
    fill_in "Disponible", with: @redencion.disponible
    fill_in "Fecharedencion", with: @redencion.fecharedencion
    fill_in "Idusuario", with: @redencion.idusuario
    fill_in "Nota", with: @redencion.nota
    click_on "Update Redencion"

    assert_text "Redencion was successfully updated"
    click_on "Back"
  end

  test "destroying a Redencion" do
    visit redencions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Redencion was successfully destroyed"
  end
end
