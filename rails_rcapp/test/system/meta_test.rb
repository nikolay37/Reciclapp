require "application_system_test_case"

class MetaTest < ApplicationSystemTestCase
  setup do
    @metum = meta(:one)
  end

  test "visiting the index" do
    visit meta_url
    assert_selector "h1", text: "Meta"
  end

  test "creating a Metum" do
    visit meta_url
    click_on "New Metum"

    fill_in "Cantidad", with: @metum.cantidad
    fill_in "Detalleparametros", with: @metum.detalleparametros_id
    fill_in "Fechaexpiracion", with: @metum.fechaexpiracion
    fill_in "Retos", with: @metum.retos_id
    click_on "Create Metum"

    assert_text "Metum was successfully created"
    click_on "Back"
  end

  test "updating a Metum" do
    visit meta_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @metum.cantidad
    fill_in "Detalleparametros", with: @metum.detalleparametros_id
    fill_in "Fechaexpiracion", with: @metum.fechaexpiracion
    fill_in "Retos", with: @metum.retos_id
    click_on "Update Metum"

    assert_text "Metum was successfully updated"
    click_on "Back"
  end

  test "destroying a Metum" do
    visit meta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Metum was successfully destroyed"
  end
end
