require "application_system_test_case"

class ActividadDifusionesTest < ApplicationSystemTestCase
  setup do
    @actividad_difusion = actividad_difusiones(:one)
  end

  test "visiting the index" do
    visit actividad_difusiones_url
    assert_selector "h1", text: "Actividad Difusiones"
  end

  test "creating a Actividad difusion" do
    visit actividad_difusiones_url
    click_on "New Actividad Difusion"

    fill_in "Alcance", with: @actividad_difusion.alcance
    fill_in "Asociada concurso milenio", with: @actividad_difusion.asociada_concurso_milenio
    fill_in "Descripcion actividad", with: @actividad_difusion.descripcion_actividad
    fill_in "Duracion", with: @actividad_difusion.duracion
    fill_in "Fecha", with: @actividad_difusion.fecha
    fill_in "N asistentes estudiantes", with: @actividad_difusion.n_asistentes_estudiantes
    fill_in "N total asistentes", with: @actividad_difusion.n_total_asistentes
    fill_in "Organizacion", with: @actividad_difusion.organizacion
    fill_in "Otro tipo evento", with: @actividad_difusion.otro_tipo_evento
    fill_in "Pais institucion", with: @actividad_difusion.pais_institucion
    fill_in "Region ubicacion", with: @actividad_difusion.region_ubicacion
    fill_in "Responsable actividad", with: @actividad_difusion.responsable_actividad
    fill_in "Tipo evento", with: @actividad_difusion.tipo_evento
    fill_in "Titulo evento", with: @actividad_difusion.titulo_evento
    click_on "Create Actividad difusion"

    assert_text "Actividad difusion was successfully created"
    click_on "Back"
  end

  test "updating a Actividad difusion" do
    visit actividad_difusiones_url
    click_on "Edit", match: :first

    fill_in "Alcance", with: @actividad_difusion.alcance
    fill_in "Asociada concurso milenio", with: @actividad_difusion.asociada_concurso_milenio
    fill_in "Descripcion actividad", with: @actividad_difusion.descripcion_actividad
    fill_in "Duracion", with: @actividad_difusion.duracion
    fill_in "Fecha", with: @actividad_difusion.fecha
    fill_in "N asistentes estudiantes", with: @actividad_difusion.n_asistentes_estudiantes
    fill_in "N total asistentes", with: @actividad_difusion.n_total_asistentes
    fill_in "Organizacion", with: @actividad_difusion.organizacion
    fill_in "Otro tipo evento", with: @actividad_difusion.otro_tipo_evento
    fill_in "Pais institucion", with: @actividad_difusion.pais_institucion
    fill_in "Region ubicacion", with: @actividad_difusion.region_ubicacion
    fill_in "Responsable actividad", with: @actividad_difusion.responsable_actividad
    fill_in "Tipo evento", with: @actividad_difusion.tipo_evento
    fill_in "Titulo evento", with: @actividad_difusion.titulo_evento
    click_on "Update Actividad difusion"

    assert_text "Actividad difusion was successfully updated"
    click_on "Back"
  end

  test "destroying a Actividad difusion" do
    visit actividad_difusiones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actividad difusion was successfully destroyed"
  end
end
