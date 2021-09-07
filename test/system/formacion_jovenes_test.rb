require "application_system_test_case"

class FormacionJovenesTest < ApplicationSystemTestCase
  setup do
    @formacion_joven = formacion_jovenes(:one)
  end

  test "visiting the index" do
    visit formacion_jovenes_url
    assert_selector "h1", text: "Formacion Jovenes"
  end

  test "creating a Formacion joven" do
    visit formacion_jovenes_url
    click_on "New Formacion Joven"

    fill_in "Email", with: @formacion_joven.email
    fill_in "Estado", with: @formacion_joven.estado
    fill_in "Fecha desvinculacion", with: @formacion_joven.fecha_desvinculacion
    fill_in "Fecha ingreso centro", with: @formacion_joven.fecha_ingreso_centro
    fill_in "Fecha nacimiento", with: @formacion_joven.fecha_nacimiento
    fill_in "Genero", with: @formacion_joven.genero
    fill_in "Materno", with: @formacion_joven.materno
    fill_in "Monto", with: @formacion_joven.monto
    fill_in "Nacionalidad", with: @formacion_joven.nacionalidad
    fill_in "Nombres", with: @formacion_joven.nombres
    fill_in "Otra universidad formacion", with: @formacion_joven.otra_universidad_formacion
    fill_in "Pais universidad origen", with: @formacion_joven.pais_universidad_origen
    fill_in "Paterno", with: @formacion_joven.paterno
    fill_in "Profesion titulo grado", with: @formacion_joven.profesion_titulo_grado
    fill_in "Region universidad formacion", with: @formacion_joven.region_universidad_formacion
    fill_in "Relacion centro", with: @formacion_joven.relacion_centro
    fill_in "Rut pasaporte", with: @formacion_joven.rut_pasaporte
    fill_in "Tipo documento", with: @formacion_joven.tipo_documento
    fill_in "Tipo financiamiento", with: @formacion_joven.tipo_financiamiento
    fill_in "Universidad formacion", with: @formacion_joven.universidad_formacion
    fill_in "Universidad origen", with: @formacion_joven.universidad_origen
    click_on "Create Formacion joven"

    assert_text "Formacion joven was successfully created"
    click_on "Back"
  end

  test "updating a Formacion joven" do
    visit formacion_jovenes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @formacion_joven.email
    fill_in "Estado", with: @formacion_joven.estado
    fill_in "Fecha desvinculacion", with: @formacion_joven.fecha_desvinculacion
    fill_in "Fecha ingreso centro", with: @formacion_joven.fecha_ingreso_centro
    fill_in "Fecha nacimiento", with: @formacion_joven.fecha_nacimiento
    fill_in "Genero", with: @formacion_joven.genero
    fill_in "Materno", with: @formacion_joven.materno
    fill_in "Monto", with: @formacion_joven.monto
    fill_in "Nacionalidad", with: @formacion_joven.nacionalidad
    fill_in "Nombres", with: @formacion_joven.nombres
    fill_in "Otra universidad formacion", with: @formacion_joven.otra_universidad_formacion
    fill_in "Pais universidad origen", with: @formacion_joven.pais_universidad_origen
    fill_in "Paterno", with: @formacion_joven.paterno
    fill_in "Profesion titulo grado", with: @formacion_joven.profesion_titulo_grado
    fill_in "Region universidad formacion", with: @formacion_joven.region_universidad_formacion
    fill_in "Relacion centro", with: @formacion_joven.relacion_centro
    fill_in "Rut pasaporte", with: @formacion_joven.rut_pasaporte
    fill_in "Tipo documento", with: @formacion_joven.tipo_documento
    fill_in "Tipo financiamiento", with: @formacion_joven.tipo_financiamiento
    fill_in "Universidad formacion", with: @formacion_joven.universidad_formacion
    fill_in "Universidad origen", with: @formacion_joven.universidad_origen
    click_on "Update Formacion joven"

    assert_text "Formacion joven was successfully updated"
    click_on "Back"
  end

  test "destroying a Formacion joven" do
    visit formacion_jovenes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formacion joven was successfully destroyed"
  end
end
