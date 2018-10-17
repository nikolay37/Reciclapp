require "application_system_test_case"

class DetalleparametrosTest < ApplicationSystemTestCase
  setup do
    @detalleparametro = detalleparametros(:one)
  end

  test "visiting the index" do
    visit detalleparametros_url
    assert_selector "h1", text: "Detalleparametros"
  end

  test "creating a Detalleparametro" do
    visit detalleparametros_url
    click_on "New Detalleparametro"

    fill_in "Nombre", with: @detalleparametro.nombre
    fill_in "Parametros", with: @detalleparametro.parametros_id
    click_on "Create Detalleparametro"

    assert_text "Detalleparametro was successfully created"
    click_on "Back"
  end

  test "updating a Detalleparametro" do
    visit detalleparametros_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @detalleparametro.nombre
    fill_in "Parametros", with: @detalleparametro.parametros_id
    click_on "Update Detalleparametro"

    assert_text "Detalleparametro was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalleparametro" do
    visit detalleparametros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalleparametro was successfully destroyed"
  end
end
