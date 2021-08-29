require "application_system_test_case"

class LineaInvestigacionesTest < ApplicationSystemTestCase
  setup do
    @linea_investigacion = linea_investigaciones(:one)
  end

  test "visiting the index" do
    visit linea_investigaciones_url
    assert_selector "h1", text: "Linea Investigaciones"
  end

  test "creating a Linea investigacion" do
    visit linea_investigaciones_url
    click_on "New Linea Investigacion"

    fill_in "Conceptos clave", with: @linea_investigacion.conceptos_clave
    fill_in "Descripcion", with: @linea_investigacion.descripcion
    fill_in "Fecha inicio", with: @linea_investigacion.fecha_inicio
    fill_in "Fecha termino", with: @linea_investigacion.fecha_termino
    fill_in "Linea investigacion", with: @linea_investigacion.linea_investigacion
    fill_in "Objetivo", with: @linea_investigacion.objetivo
    fill_in "Validez", with: @linea_investigacion.validez
    click_on "Create Linea investigacion"

    assert_text "Linea investigacion was successfully created"
    click_on "Back"
  end

  test "updating a Linea investigacion" do
    visit linea_investigaciones_url
    click_on "Edit", match: :first

    fill_in "Conceptos clave", with: @linea_investigacion.conceptos_clave
    fill_in "Descripcion", with: @linea_investigacion.descripcion
    fill_in "Fecha inicio", with: @linea_investigacion.fecha_inicio
    fill_in "Fecha termino", with: @linea_investigacion.fecha_termino
    fill_in "Linea investigacion", with: @linea_investigacion.linea_investigacion
    fill_in "Objetivo", with: @linea_investigacion.objetivo
    fill_in "Validez", with: @linea_investigacion.validez
    click_on "Update Linea investigacion"

    assert_text "Linea investigacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Linea investigacion" do
    visit linea_investigaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Linea investigacion was successfully destroyed"
  end
end
