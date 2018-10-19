require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Apellido", with: @user.apellido
    fill_in "Barrio", with: @user.barrio
    fill_in "Cedula", with: @user.cedula
    fill_in "Celular", with: @user.celular
    fill_in "Clave", with: @user.clave
    fill_in "Clienteacueducto", with: @user.clienteacueducto
    fill_in "Direccion", with: @user.direccion
    fill_in "Edificio", with: @user.edificio
    fill_in "Email", with: @user.email
    fill_in "Empresa", with: @user.empresa
    fill_in "Fechanacimiento", with: @user.fechanacimiento
    fill_in "Genero", with: @user.genero
    fill_in "Idlocalidad", with: @user.idlocalidad
    fill_in "Idperfildetpar", with: @user.idperfildetpar
    fill_in "Jac", with: @user.jac
    fill_in "Nombre", with: @user.nombre
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @user.apellido
    fill_in "Barrio", with: @user.barrio
    fill_in "Cedula", with: @user.cedula
    fill_in "Celular", with: @user.celular
    fill_in "Clave", with: @user.clave
    fill_in "Clienteacueducto", with: @user.clienteacueducto
    fill_in "Direccion", with: @user.direccion
    fill_in "Edificio", with: @user.edificio
    fill_in "Email", with: @user.email
    fill_in "Empresa", with: @user.empresa
    fill_in "Fechanacimiento", with: @user.fechanacimiento
    fill_in "Genero", with: @user.genero
    fill_in "Idlocalidad", with: @user.idlocalidad
    fill_in "Idperfildetpar", with: @user.idperfildetpar
    fill_in "Jac", with: @user.jac
    fill_in "Nombre", with: @user.nombre
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
