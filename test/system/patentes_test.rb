require "application_system_test_case"

class PatentesTest < ApplicationSystemTestCase
  setup do
    @patente = patentes(:one)
  end

  test "visiting the index" do
    visit patentes_url
    assert_selector "h1", text: "Patentes"
  end

  test "creating a Patente" do
    visit patentes_url
    click_on "New Patente"

    fill_in "Categoria", with: @patente.categoria
    fill_in "Descripcion", with: @patente.descripcion
    fill_in "Estado", with: @patente.estado
    fill_in "Fecha registro", with: @patente.fecha_registro
    fill_in "Fecha solicitud", with: @patente.fecha_solicitud
    fill_in "Inventor", with: @patente.inventor
    fill_in "N registro", with: @patente.n_registro
    fill_in "N solicitud", with: @patente.n_solicitud
    fill_in "Solicitante", with: @patente.solicitante
    fill_in "Titulo", with: @patente.titulo
    click_on "Create Patente"

    assert_text "Patente was successfully created"
    click_on "Back"
  end

  test "updating a Patente" do
    visit patentes_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @patente.categoria
    fill_in "Descripcion", with: @patente.descripcion
    fill_in "Estado", with: @patente.estado
    fill_in "Fecha registro", with: @patente.fecha_registro
    fill_in "Fecha solicitud", with: @patente.fecha_solicitud
    fill_in "Inventor", with: @patente.inventor
    fill_in "N registro", with: @patente.n_registro
    fill_in "N solicitud", with: @patente.n_solicitud
    fill_in "Solicitante", with: @patente.solicitante
    fill_in "Titulo", with: @patente.titulo
    click_on "Update Patente"

    assert_text "Patente was successfully updated"
    click_on "Back"
  end

  test "destroying a Patente" do
    visit patentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patente was successfully destroyed"
  end
end
