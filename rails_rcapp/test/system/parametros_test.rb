require "application_system_test_case"

class ParametrosTest < ApplicationSystemTestCase
  setup do
    @parametro = parametros(:one)
  end

  test "visiting the index" do
    visit parametros_url
    assert_selector "h1", text: "Parametros"
  end

  test "creating a Parametro" do
    visit parametros_url
    click_on "New Parametro"

    fill_in "Idparametro", with: @parametro.idparametro
    fill_in "Nombre", with: @parametro.nombre
    click_on "Create Parametro"

    assert_text "Parametro was successfully created"
    click_on "Back"
  end

  test "updating a Parametro" do
    visit parametros_url
    click_on "Edit", match: :first

    fill_in "Idparametro", with: @parametro.idparametro
    fill_in "Nombre", with: @parametro.nombre
    click_on "Update Parametro"

    assert_text "Parametro was successfully updated"
    click_on "Back"
  end

  test "destroying a Parametro" do
    visit parametros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parametro was successfully destroyed"
  end
end
