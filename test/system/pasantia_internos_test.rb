require "application_system_test_case"

class PasantiaInternosTest < ApplicationSystemTestCase
  setup do
    @pasantia_interno = pasantia_internos(:one)
  end

  test "visiting the index" do
    visit pasantia_internos_url
    assert_selector "h1", text: "Pasantia Internos"
  end

  test "creating a Pasantia interno" do
    visit pasantia_internos_url
    click_on "New Pasantia Interno"

    fill_in "Descripcion", with: @pasantia_interno.descripcion
    fill_in "Estudiante", with: @pasantia_interno.estudiante
    fill_in "Fecha inicio", with: @pasantia_interno.fecha_inicio
    fill_in "Fecha termino", with: @pasantia_interno.fecha_termino
    fill_in "Institucion", with: @pasantia_interno.institucion
    fill_in "Pais", with: @pasantia_interno.pais
    fill_in "Proyecto", with: @pasantia_interno.proyecto
    fill_in "Tutor", with: @pasantia_interno.tutor
    fill_in "Unidad departamento", with: @pasantia_interno.unidad_departamento
    click_on "Create Pasantia interno"

    assert_text "Pasantia interno was successfully created"
    click_on "Back"
  end

  test "updating a Pasantia interno" do
    visit pasantia_internos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @pasantia_interno.descripcion
    fill_in "Estudiante", with: @pasantia_interno.estudiante
    fill_in "Fecha inicio", with: @pasantia_interno.fecha_inicio
    fill_in "Fecha termino", with: @pasantia_interno.fecha_termino
    fill_in "Institucion", with: @pasantia_interno.institucion
    fill_in "Pais", with: @pasantia_interno.pais
    fill_in "Proyecto", with: @pasantia_interno.proyecto
    fill_in "Tutor", with: @pasantia_interno.tutor
    fill_in "Unidad departamento", with: @pasantia_interno.unidad_departamento
    click_on "Update Pasantia interno"

    assert_text "Pasantia interno was successfully updated"
    click_on "Back"
  end

  test "destroying a Pasantia interno" do
    visit pasantia_internos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pasantia interno was successfully destroyed"
  end
end
