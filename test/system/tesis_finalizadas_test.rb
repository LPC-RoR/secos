require "application_system_test_case"

class TesisFinalizadasTest < ApplicationSystemTestCase
  setup do
    @tesis_finalizada = tesis_finalizadas(:one)
  end

  test "visiting the index" do
    visit tesis_finalizadas_url
    assert_selector "h1", text: "Tesis Finalizadas"
  end

  test "creating a Tesis finalizada" do
    visit tesis_finalizadas_url
    click_on "New Tesis Finalizada"

    fill_in "Estudiante", with: @tesis_finalizada.estudiante
    fill_in "Fecha aprobacion", with: @tesis_finalizada.fecha_aprobacion
    fill_in "Nivel formacion", with: @tesis_finalizada.nivel_formacion
    fill_in "Nombre tesis", with: @tesis_finalizada.nombre_tesis
    click_on "Create Tesis finalizada"

    assert_text "Tesis finalizada was successfully created"
    click_on "Back"
  end

  test "updating a Tesis finalizada" do
    visit tesis_finalizadas_url
    click_on "Edit", match: :first

    fill_in "Estudiante", with: @tesis_finalizada.estudiante
    fill_in "Fecha aprobacion", with: @tesis_finalizada.fecha_aprobacion
    fill_in "Nivel formacion", with: @tesis_finalizada.nivel_formacion
    fill_in "Nombre tesis", with: @tesis_finalizada.nombre_tesis
    click_on "Update Tesis finalizada"

    assert_text "Tesis finalizada was successfully updated"
    click_on "Back"
  end

  test "destroying a Tesis finalizada" do
    visit tesis_finalizadas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tesis finalizada was successfully destroyed"
  end
end
