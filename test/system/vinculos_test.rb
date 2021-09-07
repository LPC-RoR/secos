require "application_system_test_case"

class VinculosTest < ApplicationSystemTestCase
  setup do
    @vinculo = vinculos(:one)
  end

  test "visiting the index" do
    visit vinculos_url
    assert_selector "h1", text: "Vinculos"
  end

  test "creating a Vinculo" do
    visit vinculos_url
    click_on "New Vinculo"

    fill_in "Actividad", with: @vinculo.actividad
    fill_in "Ciudad", with: @vinculo.ciudad
    fill_in "Costo vinculo dolares", with: @vinculo.costo_vinculo_dolares
    fill_in "Costo vinculo pesos", with: @vinculo.costo_vinculo_pesos
    fill_in "Fecha inicio", with: @vinculo.fecha_inicio
    fill_in "Fecha termino", with: @vinculo.fecha_termino
    fill_in "Fondos dolares", with: @vinculo.fondos_dolares
    fill_in "Fondos pesos", with: @vinculo.fondos_pesos
    fill_in "Investigador encargado", with: @vinculo.investigador_encargado
    fill_in "Nombre institucion", with: @vinculo.nombre_institucion
    fill_in "Objetivo actividad", with: @vinculo.objetivo_actividad
    fill_in "Otro sector economico", with: @vinculo.otro_sector_economico
    fill_in "Otro tipo actividad", with: @vinculo.otro_tipo_actividad
    fill_in "Otro tipo institucion", with: @vinculo.otro_tipo_institucion
    fill_in "Pais institucion", with: @vinculo.pais_institucion
    fill_in "Region institucion", with: @vinculo.region_institucion
    fill_in "Sector economico", with: @vinculo.sector_economico
    fill_in "Tipo actividad", with: @vinculo.tipo_actividad
    fill_in "Tipo conexion", with: @vinculo.tipo_conexion
    fill_in "Tipo institucion", with: @vinculo.tipo_institucion
    click_on "Create Vinculo"

    assert_text "Vinculo was successfully created"
    click_on "Back"
  end

  test "updating a Vinculo" do
    visit vinculos_url
    click_on "Edit", match: :first

    fill_in "Actividad", with: @vinculo.actividad
    fill_in "Ciudad", with: @vinculo.ciudad
    fill_in "Costo vinculo dolares", with: @vinculo.costo_vinculo_dolares
    fill_in "Costo vinculo pesos", with: @vinculo.costo_vinculo_pesos
    fill_in "Fecha inicio", with: @vinculo.fecha_inicio
    fill_in "Fecha termino", with: @vinculo.fecha_termino
    fill_in "Fondos dolares", with: @vinculo.fondos_dolares
    fill_in "Fondos pesos", with: @vinculo.fondos_pesos
    fill_in "Investigador encargado", with: @vinculo.investigador_encargado
    fill_in "Nombre institucion", with: @vinculo.nombre_institucion
    fill_in "Objetivo actividad", with: @vinculo.objetivo_actividad
    fill_in "Otro sector economico", with: @vinculo.otro_sector_economico
    fill_in "Otro tipo actividad", with: @vinculo.otro_tipo_actividad
    fill_in "Otro tipo institucion", with: @vinculo.otro_tipo_institucion
    fill_in "Pais institucion", with: @vinculo.pais_institucion
    fill_in "Region institucion", with: @vinculo.region_institucion
    fill_in "Sector economico", with: @vinculo.sector_economico
    fill_in "Tipo actividad", with: @vinculo.tipo_actividad
    fill_in "Tipo conexion", with: @vinculo.tipo_conexion
    fill_in "Tipo institucion", with: @vinculo.tipo_institucion
    click_on "Update Vinculo"

    assert_text "Vinculo was successfully updated"
    click_on "Back"
  end

  test "destroying a Vinculo" do
    visit vinculos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vinculo was successfully destroyed"
  end
end
