require "application_system_test_case"

class NivelFormacionesTest < ApplicationSystemTestCase
  setup do
    @nivel_formacion = nivel_formaciones(:one)
  end

  test "visiting the index" do
    visit nivel_formaciones_url
    assert_selector "h1", text: "Nivel Formaciones"
  end

  test "creating a Nivel formacion" do
    visit nivel_formaciones_url
    click_on "New Nivel Formacion"

    fill_in "Descripcion", with: @nivel_formacion.descripcion
    fill_in "Fecha inicio", with: @nivel_formacion.fecha_inicio
    fill_in "Fecha obtencion", with: @nivel_formacion.fecha_obtencion
    fill_in "Nivel en formacion", with: @nivel_formacion.nivel_en_formacion
    fill_in "Titulo grado", with: @nivel_formacion.titulo_grado
    click_on "Create Nivel formacion"

    assert_text "Nivel formacion was successfully created"
    click_on "Back"
  end

  test "updating a Nivel formacion" do
    visit nivel_formaciones_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @nivel_formacion.descripcion
    fill_in "Fecha inicio", with: @nivel_formacion.fecha_inicio
    fill_in "Fecha obtencion", with: @nivel_formacion.fecha_obtencion
    fill_in "Nivel en formacion", with: @nivel_formacion.nivel_en_formacion
    fill_in "Titulo grado", with: @nivel_formacion.titulo_grado
    click_on "Update Nivel formacion"

    assert_text "Nivel formacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Nivel formacion" do
    visit nivel_formaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nivel formacion was successfully destroyed"
  end
end
