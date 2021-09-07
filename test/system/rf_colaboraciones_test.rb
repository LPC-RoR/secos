require "application_system_test_case"

class RfColaboracionesTest < ApplicationSystemTestCase
  setup do
    @rf_colaboracion = rf_colaboraciones(:one)
  end

  test "visiting the index" do
    visit rf_colaboraciones_url
    assert_selector "h1", text: "Rf Colaboraciones"
  end

  test "creating a Rf colaboracion" do
    visit rf_colaboraciones_url
    click_on "New Rf Colaboracion"

    fill_in "Alcance", with: @rf_colaboracion.alcance
    fill_in "Descripcion", with: @rf_colaboracion.descripcion
    fill_in "Fecha inicio", with: @rf_colaboracion.fecha_inicio
    fill_in "Fecha termino", with: @rf_colaboracion.fecha_termino
    fill_in "Instituciones", with: @rf_colaboracion.instituciones
    fill_in "N investigadores externos", with: @rf_colaboracion.n_investigadores_externos
    fill_in "N investigadores milenio", with: @rf_colaboracion.n_investigadores_milenio
    fill_in "N postdoc estudiantes externos", with: @rf_colaboracion.n_postdoc_estudiantes_externos
    fill_in "N postdoc estudiantes milenio", with: @rf_colaboracion.n_postdoc_estudiantes_milenio
    fill_in "Nombre red", with: @rf_colaboracion.nombre_red
    fill_in "Objetivo", with: @rf_colaboracion.objetivo
    fill_in "Sitio web", with: @rf_colaboracion.sitio_web
    click_on "Create Rf colaboracion"

    assert_text "Rf colaboracion was successfully created"
    click_on "Back"
  end

  test "updating a Rf colaboracion" do
    visit rf_colaboraciones_url
    click_on "Edit", match: :first

    fill_in "Alcance", with: @rf_colaboracion.alcance
    fill_in "Descripcion", with: @rf_colaboracion.descripcion
    fill_in "Fecha inicio", with: @rf_colaboracion.fecha_inicio
    fill_in "Fecha termino", with: @rf_colaboracion.fecha_termino
    fill_in "Instituciones", with: @rf_colaboracion.instituciones
    fill_in "N investigadores externos", with: @rf_colaboracion.n_investigadores_externos
    fill_in "N investigadores milenio", with: @rf_colaboracion.n_investigadores_milenio
    fill_in "N postdoc estudiantes externos", with: @rf_colaboracion.n_postdoc_estudiantes_externos
    fill_in "N postdoc estudiantes milenio", with: @rf_colaboracion.n_postdoc_estudiantes_milenio
    fill_in "Nombre red", with: @rf_colaboracion.nombre_red
    fill_in "Objetivo", with: @rf_colaboracion.objetivo
    fill_in "Sitio web", with: @rf_colaboracion.sitio_web
    click_on "Update Rf colaboracion"

    assert_text "Rf colaboracion was successfully updated"
    click_on "Back"
  end

  test "destroying a Rf colaboracion" do
    visit rf_colaboraciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rf colaboracion was successfully destroyed"
  end
end
