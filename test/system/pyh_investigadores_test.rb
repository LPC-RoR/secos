require "application_system_test_case"

class PyhInvestigadoresTest < ApplicationSystemTestCase
  setup do
    @pyh_investigador = pyh_investigadores(:one)
  end

  test "visiting the index" do
    visit pyh_investigadores_url
    assert_selector "h1", text: "Pyh Investigadores"
  end

  test "creating a Pyh investigador" do
    visit pyh_investigadores_url
    click_on "New Pyh Investigador"

    fill_in "Contribucion", with: @pyh_investigador.contribucion
    fill_in "Fecha", with: @pyh_investigador.fecha
    fill_in "Institucion", with: @pyh_investigador.institucion
    fill_in "Investigador", with: @pyh_investigador.investigador
    fill_in "Pais", with: @pyh_investigador.pais
    fill_in "Premio", with: @pyh_investigador.premio
    click_on "Create Pyh investigador"

    assert_text "Pyh investigador was successfully created"
    click_on "Back"
  end

  test "updating a Pyh investigador" do
    visit pyh_investigadores_url
    click_on "Edit", match: :first

    fill_in "Contribucion", with: @pyh_investigador.contribucion
    fill_in "Fecha", with: @pyh_investigador.fecha
    fill_in "Institucion", with: @pyh_investigador.institucion
    fill_in "Investigador", with: @pyh_investigador.investigador
    fill_in "Pais", with: @pyh_investigador.pais
    fill_in "Premio", with: @pyh_investigador.premio
    click_on "Update Pyh investigador"

    assert_text "Pyh investigador was successfully updated"
    click_on "Back"
  end

  test "destroying a Pyh investigador" do
    visit pyh_investigadores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pyh investigador was successfully destroyed"
  end
end
