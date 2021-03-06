require "application_system_test_case"

class PuntoecologicosTest < ApplicationSystemTestCase
  setup do
    @puntoecologico = puntoecologicos(:one)
  end

  test "visiting the index" do
    visit puntoecologicos_url
    assert_selector "h1", text: "Puntoecologicos"
  end

  test "creating a Puntoecologico" do
    visit puntoecologicos_url
    click_on "New Puntoecologico"

    fill_in "Detalleparametros", with: @puntoecologico.detalleparametros_id
    fill_in "Fechacierre", with: @puntoecologico.fechacierre
    fill_in "Fechainicio", with: @puntoecologico.fechainicio
    fill_in "Idresponsable", with: @puntoecologico.idresponsable
    fill_in "Nombre", with: @puntoecologico.nombre
    fill_in "Ubicacionx", with: @puntoecologico.ubicacionx
    fill_in "Ubicaciony", with: @puntoecologico.ubicaciony
    fill_in "Users", with: @puntoecologico.users_id
    click_on "Create Puntoecologico"

    assert_text "Puntoecologico was successfully created"
    click_on "Back"
  end

  test "updating a Puntoecologico" do
    visit puntoecologicos_url
    click_on "Edit", match: :first

    fill_in "Detalleparametros", with: @puntoecologico.detalleparametros_id
    fill_in "Fechacierre", with: @puntoecologico.fechacierre
    fill_in "Fechainicio", with: @puntoecologico.fechainicio
    fill_in "Idresponsable", with: @puntoecologico.idresponsable
    fill_in "Nombre", with: @puntoecologico.nombre
    fill_in "Ubicacionx", with: @puntoecologico.ubicacionx
    fill_in "Ubicaciony", with: @puntoecologico.ubicaciony
    fill_in "Users", with: @puntoecologico.users_id
    click_on "Update Puntoecologico"

    assert_text "Puntoecologico was successfully updated"
    click_on "Back"
  end

  test "destroying a Puntoecologico" do
    visit puntoecologicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Puntoecologico was successfully destroyed"
  end
end
