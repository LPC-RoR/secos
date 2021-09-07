require "application_system_test_case"

class AporteActividadesTest < ApplicationSystemTestCase
  setup do
    @aporte_actividad = aporte_actividades(:one)
  end

  test "visiting the index" do
    visit aporte_actividades_url
    assert_selector "h1", text: "Aporte Actividades"
  end

  test "creating a Aporte actividad" do
    visit aporte_actividades_url
    click_on "New Aporte Actividad"

    fill_in "Actividad producto", with: @aporte_actividad.actividad_producto
    fill_in "Colaborador", with: @aporte_actividad.colaborador
    fill_in "Monto", with: @aporte_actividad.monto
    fill_in "Tipo", with: @aporte_actividad.tipo
    fill_in "Tipo colaboracion", with: @aporte_actividad.tipo_colaboracion
    click_on "Create Aporte actividad"

    assert_text "Aporte actividad was successfully created"
    click_on "Back"
  end

  test "updating a Aporte actividad" do
    visit aporte_actividades_url
    click_on "Edit", match: :first

    fill_in "Actividad producto", with: @aporte_actividad.actividad_producto
    fill_in "Colaborador", with: @aporte_actividad.colaborador
    fill_in "Monto", with: @aporte_actividad.monto
    fill_in "Tipo", with: @aporte_actividad.tipo
    fill_in "Tipo colaboracion", with: @aporte_actividad.tipo_colaboracion
    click_on "Update Aporte actividad"

    assert_text "Aporte actividad was successfully updated"
    click_on "Back"
  end

  test "destroying a Aporte actividad" do
    visit aporte_actividades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aporte actividad was successfully destroyed"
  end
end
