require "application_system_test_case"

class AcosTest < ApplicationSystemTestCase
  setup do
    @aco = acos(:one)
  end

  test "visiting the index" do
    visit acos_url
    assert_selector "h1", text: "Acos"
  end

  test "creating a Aco" do
    visit acos_url
    click_on "New Aco"

    fill_in "Alcance", with: @aco.alcance
    fill_in "Ciudad", with: @aco.ciudad
    fill_in "Duracion dias", with: @aco.duracion_dias
    fill_in "Fecha inicio", with: @aco.fecha_inicio
    fill_in "Fecha termino", with: @aco.fecha_termino
    fill_in "Investigador responsable", with: @aco.investigador_responsable
    fill_in "N asistentes", with: @aco.n_asistentes
    fill_in "N expositores extranjeros", with: @aco.n_expositores_extranjeros
    fill_in "N expositores milenio", with: @aco.n_expositores_milenio
    fill_in "N expositores nacionales", with: @aco.n_expositores_nacionales
    fill_in "Otro tipo evento", with: @aco.otro_tipo_evento
    fill_in "Pais", with: @aco.pais
    fill_in "Tipo evento", with: @aco.tipo_evento
    fill_in "Titulo evento", with: @aco.titulo_evento
    click_on "Create Aco"

    assert_text "Aco was successfully created"
    click_on "Back"
  end

  test "updating a Aco" do
    visit acos_url
    click_on "Edit", match: :first

    fill_in "Alcance", with: @aco.alcance
    fill_in "Ciudad", with: @aco.ciudad
    fill_in "Duracion dias", with: @aco.duracion_dias
    fill_in "Fecha inicio", with: @aco.fecha_inicio
    fill_in "Fecha termino", with: @aco.fecha_termino
    fill_in "Investigador responsable", with: @aco.investigador_responsable
    fill_in "N asistentes", with: @aco.n_asistentes
    fill_in "N expositores extranjeros", with: @aco.n_expositores_extranjeros
    fill_in "N expositores milenio", with: @aco.n_expositores_milenio
    fill_in "N expositores nacionales", with: @aco.n_expositores_nacionales
    fill_in "Otro tipo evento", with: @aco.otro_tipo_evento
    fill_in "Pais", with: @aco.pais
    fill_in "Tipo evento", with: @aco.tipo_evento
    fill_in "Titulo evento", with: @aco.titulo_evento
    click_on "Update Aco"

    assert_text "Aco was successfully updated"
    click_on "Back"
  end

  test "destroying a Aco" do
    visit acos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aco was successfully destroyed"
  end
end
