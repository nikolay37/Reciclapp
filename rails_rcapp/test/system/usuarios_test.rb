require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "New Usuario"

    fill_in "Apellido", with: @usuario.apellido
    fill_in "Barrio", with: @usuario.barrio
    fill_in "Celular", with: @usuario.celular
    fill_in "Clienteacueducto", with: @usuario.clienteacueducto
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Edificio", with: @usuario.edificio
    fill_in "Email", with: @usuario.email
    fill_in "Empresa", with: @usuario.empresa
    fill_in "Fechanacimiento", with: @usuario.fechanacimiento
    fill_in "Genero", with: @usuario.genero
    fill_in "Idlocalidad", with: @usuario.idlocalidad
    fill_in "Idperfildetpar", with: @usuario.idperfildetpar
    fill_in "Idusuario", with: @usuario.idusuario
    fill_in "Jac", with: @usuario.jac
    fill_in "Nombre", with: @usuario.nombre
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @usuario.apellido
    fill_in "Barrio", with: @usuario.barrio
    fill_in "Celular", with: @usuario.celular
    fill_in "Clienteacueducto", with: @usuario.clienteacueducto
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Edificio", with: @usuario.edificio
    fill_in "Email", with: @usuario.email
    fill_in "Empresa", with: @usuario.empresa
    fill_in "Fechanacimiento", with: @usuario.fechanacimiento
    fill_in "Genero", with: @usuario.genero
    fill_in "Idlocalidad", with: @usuario.idlocalidad
    fill_in "Idperfildetpar", with: @usuario.idperfildetpar
    fill_in "Idusuario", with: @usuario.idusuario
    fill_in "Jac", with: @usuario.jac
    fill_in "Nombre", with: @usuario.nombre
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
