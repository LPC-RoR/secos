require "application_system_test_case"

class InvestigadoresTest < ApplicationSystemTestCase
  setup do
    @investigador = investigadores(:one)
  end

  test "visiting the index" do
    visit investigadores_url
    assert_selector "h1", text: "Investigadores"
  end

  test "creating a Investigador" do
    visit investigadores_url
    click_on "New Investigador"

    fill_in "Cargo", with: @investigador.cargo
    fill_in "Celular", with: @investigador.celular
    fill_in "Direccion correspondencia", with: @investigador.direccion_correspondencia
    fill_in "Email", with: @investigador.email
    fill_in "Fecha inicio", with: @investigador.fecha_inicio
    fill_in "Fecha nacimiento", with: @investigador.fecha_nacimiento
    fill_in "Fecha termino", with: @investigador.fecha_termino
    fill_in "Fuente financiamiento", with: @investigador.fuente_financiamiento
    fill_in "Institucion", with: @investigador.institucion
    fill_in "Materno", with: @investigador.materno
    fill_in "Nacionalidad", with: @investigador.nacionalidad_id
    fill_in "Nombres", with: @investigador.nombres
    fill_in "Otra profesion", with: @investigador.otra_profesion
    fill_in "Paterno", with: @investigador.paterno
    fill_in "Profesion", with: @investigador.profesion_id
    fill_in "Region", with: @investigador.region_id
    fill_in "Relacion centro", with: @investigador.relacion_centro
    fill_in "Rut pasaporte", with: @investigador.rut_pasaporte
    fill_in "Telefono 1", with: @investigador.telefono_1
    fill_in "Telefono 2", with: @investigador.telefono_2
    fill_in "Tipo documento", with: @investigador.tipo_documento
    fill_in "Vigencia", with: @investigador.vigencia
    click_on "Create Investigador"

    assert_text "Investigador was successfully created"
    click_on "Back"
  end

  test "updating a Investigador" do
    visit investigadores_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @investigador.cargo
    fill_in "Celular", with: @investigador.celular
    fill_in "Direccion correspondencia", with: @investigador.direccion_correspondencia
    fill_in "Email", with: @investigador.email
    fill_in "Fecha inicio", with: @investigador.fecha_inicio
    fill_in "Fecha nacimiento", with: @investigador.fecha_nacimiento
    fill_in "Fecha termino", with: @investigador.fecha_termino
    fill_in "Fuente financiamiento", with: @investigador.fuente_financiamiento
    fill_in "Institucion", with: @investigador.institucion
    fill_in "Materno", with: @investigador.materno
    fill_in "Nacionalidad", with: @investigador.nacionalidad_id
    fill_in "Nombres", with: @investigador.nombres
    fill_in "Otra profesion", with: @investigador.otra_profesion
    fill_in "Paterno", with: @investigador.paterno
    fill_in "Profesion", with: @investigador.profesion_id
    fill_in "Region", with: @investigador.region_id
    fill_in "Relacion centro", with: @investigador.relacion_centro
    fill_in "Rut pasaporte", with: @investigador.rut_pasaporte
    fill_in "Telefono 1", with: @investigador.telefono_1
    fill_in "Telefono 2", with: @investigador.telefono_2
    fill_in "Tipo documento", with: @investigador.tipo_documento
    fill_in "Vigencia", with: @investigador.vigencia
    click_on "Update Investigador"

    assert_text "Investigador was successfully updated"
    click_on "Back"
  end

  test "destroying a Investigador" do
    visit investigadores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investigador was successfully destroyed"
  end
end
