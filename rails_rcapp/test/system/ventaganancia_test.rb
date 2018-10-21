require "application_system_test_case"

class VentagananciaTest < ApplicationSystemTestCase
  setup do
    @ventaganancium = ventaganancia(:one)
  end

  test "visiting the index" do
    visit ventaganancia_url
    assert_selector "h1", text: "Ventaganancia"
  end

  test "creating a Ventaganancium" do
    visit ventaganancia_url
    click_on "New Ventaganancium"

    fill_in "Cantidad", with: @ventaganancium.cantidad
    fill_in "Comprador", with: @ventaganancium.comprador
    fill_in "Detalleparametros", with: @ventaganancium.detalleparametros_id
    fill_in "Donacion", with: @ventaganancium.donacion
    fill_in "Fechaventa", with: @ventaganancium.fechaventa
    fill_in "Redenciones", with: @ventaganancium.redenciones_id
    fill_in "Total", with: @ventaganancium.total
    fill_in "Valorunidad", with: @ventaganancium.valorunidad
    click_on "Create Ventaganancium"

    assert_text "Ventaganancium was successfully created"
    click_on "Back"
  end

  test "updating a Ventaganancium" do
    visit ventaganancia_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @ventaganancium.cantidad
    fill_in "Comprador", with: @ventaganancium.comprador
    fill_in "Detalleparametros", with: @ventaganancium.detalleparametros_id
    fill_in "Donacion", with: @ventaganancium.donacion
    fill_in "Fechaventa", with: @ventaganancium.fechaventa
    fill_in "Redenciones", with: @ventaganancium.redenciones_id
    fill_in "Total", with: @ventaganancium.total
    fill_in "Valorunidad", with: @ventaganancium.valorunidad
    click_on "Update Ventaganancium"

    assert_text "Ventaganancium was successfully updated"
    click_on "Back"
  end

  test "destroying a Ventaganancium" do
    visit ventaganancia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ventaganancium was successfully destroyed"
  end
end
