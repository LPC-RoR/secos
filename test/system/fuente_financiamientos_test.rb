require "application_system_test_case"

class FuenteFinanciamientosTest < ApplicationSystemTestCase
  setup do
    @fuente_financiamiento = fuente_financiamientos(:one)
  end

  test "visiting the index" do
    visit fuente_financiamientos_url
    assert_selector "h1", text: "Fuente Financiamientos"
  end

  test "creating a Fuente financiamiento" do
    visit fuente_financiamientos_url
    click_on "New Fuente Financiamiento"

    fill_in "Fondos", with: @fuente_financiamiento.fondos
    fill_in "Monto pesos", with: @fuente_financiamiento.monto_pesos
    fill_in "Otro fondo", with: @fuente_financiamiento.otro_fondo
    click_on "Create Fuente financiamiento"

    assert_text "Fuente financiamiento was successfully created"
    click_on "Back"
  end

  test "updating a Fuente financiamiento" do
    visit fuente_financiamientos_url
    click_on "Edit", match: :first

    fill_in "Fondos", with: @fuente_financiamiento.fondos
    fill_in "Monto pesos", with: @fuente_financiamiento.monto_pesos
    fill_in "Otro fondo", with: @fuente_financiamiento.otro_fondo
    click_on "Update Fuente financiamiento"

    assert_text "Fuente financiamiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Fuente financiamiento" do
    visit fuente_financiamientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fuente financiamiento was successfully destroyed"
  end
end
