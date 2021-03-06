require "application_system_test_case"

class RetousuariosTest < ApplicationSystemTestCase
  setup do
    @retousuario = retousuarios(:one)
  end

  test "visiting the index" do
    visit retousuarios_url
    assert_selector "h1", text: "Retousuarios"
  end

  test "creating a Retousuario" do
    visit retousuarios_url
    click_on "New Retousuario"

    fill_in "Lema", with: @retousuario.lema
    fill_in "Nota", with: @retousuario.nota
    fill_in "Retos", with: @retousuario.retos_id
    fill_in "Users", with: @retousuario.users_id
    click_on "Create Retousuario"

    assert_text "Retousuario was successfully created"
    click_on "Back"
  end

  test "updating a Retousuario" do
    visit retousuarios_url
    click_on "Edit", match: :first

    fill_in "Lema", with: @retousuario.lema
    fill_in "Nota", with: @retousuario.nota
    fill_in "Retos", with: @retousuario.retos_id
    fill_in "Users", with: @retousuario.users_id
    click_on "Update Retousuario"

    assert_text "Retousuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Retousuario" do
    visit retousuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Retousuario was successfully destroyed"
  end
end
