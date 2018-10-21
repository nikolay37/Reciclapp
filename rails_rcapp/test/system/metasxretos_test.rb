require "application_system_test_case"

class MetasxretosTest < ApplicationSystemTestCase
  setup do
    @metasxreto = metasxretos(:one)
  end

  test "visiting the index" do
    visit metasxretos_url
    assert_selector "h1", text: "Metasxretos"
  end

  test "creating a Metasxreto" do
    visit metasxretos_url
    click_on "New Metasxreto"

    fill_in "Cantidad", with: @metasxreto.cantidad
    fill_in "Detalleparametros", with: @metasxreto.detalleparametros_id
    fill_in "Fechaexpiracion", with: @metasxreto.fechaexpiracion
    fill_in "Nota", with: @metasxreto.nota
    fill_in "Retos", with: @metasxreto.retos_id
    click_on "Create Metasxreto"

    assert_text "Metasxreto was successfully created"
    click_on "Back"
  end

  test "updating a Metasxreto" do
    visit metasxretos_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @metasxreto.cantidad
    fill_in "Detalleparametros", with: @metasxreto.detalleparametros_id
    fill_in "Fechaexpiracion", with: @metasxreto.fechaexpiracion
    fill_in "Nota", with: @metasxreto.nota
    fill_in "Retos", with: @metasxreto.retos_id
    click_on "Update Metasxreto"

    assert_text "Metasxreto was successfully updated"
    click_on "Back"
  end

  test "destroying a Metasxreto" do
    visit metasxretos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Metasxreto was successfully destroyed"
  end
end
