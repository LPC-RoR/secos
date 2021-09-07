require "application_system_test_case"

class TecnicoAdministrativosTest < ApplicationSystemTestCase
  setup do
    @tecnico_administrativo = tecnico_administrativos(:one)
  end

  test "visiting the index" do
    visit tecnico_administrativos_url
    assert_selector "h1", text: "Tecnico Administrativos"
  end

  test "creating a Tecnico administrativo" do
    visit tecnico_administrativos_url
    click_on "New Tecnico Administrativo"

    fill_in "Categoria", with: @tecnico_administrativo.categoria
    fill_in "Fecha desvinculacion", with: @tecnico_administrativo.fecha_desvinculacion
    fill_in "Fecha ingreso", with: @tecnico_administrativo.fecha_ingreso
    fill_in "Fecha nacimiento", with: @tecnico_administrativo.fecha_nacimiento
    fill_in "Genero", with: @tecnico_administrativo.genero
    fill_in "Materno", with: @tecnico_administrativo.materno
    fill_in "Nacionalidad", with: @tecnico_administrativo.nacionalidad
    fill_in "Nombres", with: @tecnico_administrativo.nombres
    fill_in "Paterno", with: @tecnico_administrativo.paterno
    fill_in "Relacion centro", with: @tecnico_administrativo.relacion_centro
    fill_in "Rut pasaporte", with: @tecnico_administrativo.rut_pasaporte
    fill_in "Tipo documento", with: @tecnico_administrativo.tipo_documento
    fill_in "Tipo financiamiento", with: @tecnico_administrativo.tipo_financiamiento
    click_on "Create Tecnico administrativo"

    assert_text "Tecnico administrativo was successfully created"
    click_on "Back"
  end

  test "updating a Tecnico administrativo" do
    visit tecnico_administrativos_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @tecnico_administrativo.categoria
    fill_in "Fecha desvinculacion", with: @tecnico_administrativo.fecha_desvinculacion
    fill_in "Fecha ingreso", with: @tecnico_administrativo.fecha_ingreso
    fill_in "Fecha nacimiento", with: @tecnico_administrativo.fecha_nacimiento
    fill_in "Genero", with: @tecnico_administrativo.genero
    fill_in "Materno", with: @tecnico_administrativo.materno
    fill_in "Nacionalidad", with: @tecnico_administrativo.nacionalidad
    fill_in "Nombres", with: @tecnico_administrativo.nombres
    fill_in "Paterno", with: @tecnico_administrativo.paterno
    fill_in "Relacion centro", with: @tecnico_administrativo.relacion_centro
    fill_in "Rut pasaporte", with: @tecnico_administrativo.rut_pasaporte
    fill_in "Tipo documento", with: @tecnico_administrativo.tipo_documento
    fill_in "Tipo financiamiento", with: @tecnico_administrativo.tipo_financiamiento
    click_on "Update Tecnico administrativo"

    assert_text "Tecnico administrativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tecnico administrativo" do
    visit tecnico_administrativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tecnico administrativo was successfully destroyed"
  end
end
