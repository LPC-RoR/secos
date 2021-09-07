require "application_system_test_case"

class RColaboracionesTest < ApplicationSystemTestCase
  setup do
    @r_colaboracion = r_colaboraciones(:one)
  end

  test "visiting the index" do
    visit r_colaboraciones_url
    assert_selector "h1", text: "R Colaboraciones"
  end

  test "creating a R colaboracion" do
    visit r_colaboraciones_url
    click_on "New R Colaboracion"

    fill_in "Descripcion", with: @r_colaboracion.descripcion
    fill_in "Institucion co participante", with: @r_colaboracion.institucion_co_participante
    fill_in "N investigadores externos", with: @r_colaboracion.n_investigadores_externos
    fill_in "N investigadores milenio", with: @r_colaboracion.n_investigadores_milenio
    fill_in "N postdoc alumnos externos", with: @r_colaboracion.n_postdoc_alumnos_externos
    fill_in "N postdoc alumnos milenio", with: @r_colaboracion.n_postdoc_alumnos_milenio
    fill_in "N productos", with: @r_colaboracion.n_productos
    fill_in "Nombre red", with: @r_colaboracion.nombre_red
    fill_in "Objetivo", with: @r_colaboracion.objetivo
    fill_in "Tipo productos", with: @r_colaboracion.tipo_productos
    click_on "Create R colaboracion"

    assert_text "R colaboracion was successfully created"
    click_on "Back"
  end

  test "updating a R colaboracion" do
    visit r_colaboraciones_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @r_colaboracion.descripcion
    fill_in "Institucion co participante", with: @r_colaboracion.institucion_co_participante
    fill_in "N investigadores externos", with: @r_colaboracion.n_investigadores_externos
    fill_in "N investigadores milenio", with: @r_colaboracion.n_investigadores_milenio
    fill_in "N postdoc alumnos externos", with: @r_colaboracion.n_postdoc_alumnos_externos
    fill_in "N postdoc alumnos milenio", with: @r_colaboracion.n_postdoc_alumnos_milenio
    fill_in "N productos", with: @r_colaboracion.n_productos
    fill_in "Nombre red", with: @r_colaboracion.nombre_red
    fill_in "Objetivo", with: @r_colaboracion.objetivo
    fill_in "Tipo productos", with: @r_colaboracion.tipo_productos
    click_on "Update R colaboracion"

    assert_text "R colaboracion was successfully updated"
    click_on "Back"
  end

  test "destroying a R colaboracion" do
    visit r_colaboraciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "R colaboracion was successfully destroyed"
  end
end
