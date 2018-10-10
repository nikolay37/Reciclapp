require "application_system_test_case"

class VentaTest < ApplicationSystemTestCase
  setup do
    @ventum = venta(:one)
  end

  test "visiting the index" do
    visit venta_url
    assert_selector "h1", text: "Venta"
  end

  test "creating a Ventum" do
    visit venta_url
    click_on "New Ventum"

    fill_in "Cantidad", with: @ventum.cantidad
    fill_in "Donacion", with: @ventum.donacion
    fill_in "Fechaventa", with: @ventum.fechaventa
    fill_in "Iddetalleparametro", with: @ventum.iddetalleparametro
    fill_in "Idpuntoecologico", with: @ventum.idpuntoecologico
    fill_in "Idventas", with: @ventum.idventas
    fill_in "Valor", with: @ventum.valor
    click_on "Create Ventum"

    assert_text "Ventum was successfully created"
    click_on "Back"
  end

  test "updating a Ventum" do
    visit venta_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @ventum.cantidad
    fill_in "Donacion", with: @ventum.donacion
    fill_in "Fechaventa", with: @ventum.fechaventa
    fill_in "Iddetalleparametro", with: @ventum.iddetalleparametro
    fill_in "Idpuntoecologico", with: @ventum.idpuntoecologico
    fill_in "Idventas", with: @ventum.idventas
    fill_in "Valor", with: @ventum.valor
    click_on "Update Ventum"

    assert_text "Ventum was successfully updated"
    click_on "Back"
  end

  test "destroying a Ventum" do
    visit venta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ventum was successfully destroyed"
  end
end
