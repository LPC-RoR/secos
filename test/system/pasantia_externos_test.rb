require "application_system_test_case"

class PasantiaExternosTest < ApplicationSystemTestCase
  setup do
    @pasantia_externo = pasantia_externos(:one)
  end

  test "visiting the index" do
    visit pasantia_externos_url
    assert_selector "h1", text: "Pasantia Externos"
  end

  test "creating a Pasantia externo" do
    visit pasantia_externos_url
    click_on "New Pasantia Externo"

    fill_in "Descripcion pasantia", with: @pasantia_externo.descripcion_pasantia
    fill_in "Fecha inicio", with: @pasantia_externo.fecha_inicio
    fill_in "Fecha termino", with: @pasantia_externo.fecha_termino
    fill_in "Grado academico", with: @pasantia_externo.grado_academico
    fill_in "Institucion pasantia", with: @pasantia_externo.institucion_pasantia
    fill_in "Institucion procedencia", with: @pasantia_externo.institucion_procedencia
    fill_in "Materno", with: @pasantia_externo.materno
    fill_in "Nombres", with: @pasantia_externo.nombres
    fill_in "Pais", with: @pasantia_externo.pais
    fill_in "Paterno", with: @pasantia_externo.paterno
    fill_in "Region", with: @pasantia_externo.region
    fill_in "Tipo pasante", with: @pasantia_externo.tipo_pasante
    click_on "Create Pasantia externo"

    assert_text "Pasantia externo was successfully created"
    click_on "Back"
  end

  test "updating a Pasantia externo" do
    visit pasantia_externos_url
    click_on "Edit", match: :first

    fill_in "Descripcion pasantia", with: @pasantia_externo.descripcion_pasantia
    fill_in "Fecha inicio", with: @pasantia_externo.fecha_inicio
    fill_in "Fecha termino", with: @pasantia_externo.fecha_termino
    fill_in "Grado academico", with: @pasantia_externo.grado_academico
    fill_in "Institucion pasantia", with: @pasantia_externo.institucion_pasantia
    fill_in "Institucion procedencia", with: @pasantia_externo.institucion_procedencia
    fill_in "Materno", with: @pasantia_externo.materno
    fill_in "Nombres", with: @pasantia_externo.nombres
    fill_in "Pais", with: @pasantia_externo.pais
    fill_in "Paterno", with: @pasantia_externo.paterno
    fill_in "Region", with: @pasantia_externo.region
    fill_in "Tipo pasante", with: @pasantia_externo.tipo_pasante
    click_on "Update Pasantia externo"

    assert_text "Pasantia externo was successfully updated"
    click_on "Back"
  end

  test "destroying a Pasantia externo" do
    visit pasantia_externos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pasantia externo was successfully destroyed"
  end
end
