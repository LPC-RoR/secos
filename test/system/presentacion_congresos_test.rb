require "application_system_test_case"

class PresentacionCongresosTest < ApplicationSystemTestCase
  setup do
    @presentacion_congreso = presentacion_congresos(:one)
  end

  test "visiting the index" do
    visit presentacion_congresos_url
    assert_selector "h1", text: "Presentacion Congresos"
  end

  test "creating a Presentacion congreso" do
    visit presentacion_congresos_url
    click_on "New Presentacion Congreso"

    fill_in "Alcance", with: @presentacion_congreso.alcance
    fill_in "Ciudad", with: @presentacion_congreso.ciudad
    fill_in "Fecha", with: @presentacion_congreso.fecha
    fill_in "Link presentacion", with: @presentacion_congreso.link_presentacion
    fill_in "Nombre evento", with: @presentacion_congreso.nombre_evento
    fill_in "Nombre presentacion", with: @presentacion_congreso.nombre_presentacion
    fill_in "Organizacion", with: @presentacion_congreso.organizacion
    fill_in "Otro tipo", with: @presentacion_congreso.otro_tipo
    fill_in "Pais", with: @presentacion_congreso.pais
    fill_in "Tipo", with: @presentacion_congreso.tipo
    click_on "Create Presentacion congreso"

    assert_text "Presentacion congreso was successfully created"
    click_on "Back"
  end

  test "updating a Presentacion congreso" do
    visit presentacion_congresos_url
    click_on "Edit", match: :first

    fill_in "Alcance", with: @presentacion_congreso.alcance
    fill_in "Ciudad", with: @presentacion_congreso.ciudad
    fill_in "Fecha", with: @presentacion_congreso.fecha
    fill_in "Link presentacion", with: @presentacion_congreso.link_presentacion
    fill_in "Nombre evento", with: @presentacion_congreso.nombre_evento
    fill_in "Nombre presentacion", with: @presentacion_congreso.nombre_presentacion
    fill_in "Organizacion", with: @presentacion_congreso.organizacion
    fill_in "Otro tipo", with: @presentacion_congreso.otro_tipo
    fill_in "Pais", with: @presentacion_congreso.pais
    fill_in "Tipo", with: @presentacion_congreso.tipo
    click_on "Update Presentacion congreso"

    assert_text "Presentacion congreso was successfully updated"
    click_on "Back"
  end

  test "destroying a Presentacion congreso" do
    visit presentacion_congresos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presentacion congreso was successfully destroyed"
  end
end
