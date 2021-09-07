require "application_system_test_case"

class PyhCentrosTest < ApplicationSystemTestCase
  setup do
    @pyh_centro = pyh_centros(:one)
  end

  test "visiting the index" do
    visit pyh_centros_url
    assert_selector "h1", text: "Pyh Centros"
  end

  test "creating a Pyh centro" do
    visit pyh_centros_url
    click_on "New Pyh Centro"

    fill_in "Contribucion", with: @pyh_centro.contribucion
    fill_in "Fecha", with: @pyh_centro.fecha
    fill_in "Institucion", with: @pyh_centro.institucion
    fill_in "Pais", with: @pyh_centro.pais
    fill_in "Premio", with: @pyh_centro.premio
    click_on "Create Pyh centro"

    assert_text "Pyh centro was successfully created"
    click_on "Back"
  end

  test "updating a Pyh centro" do
    visit pyh_centros_url
    click_on "Edit", match: :first

    fill_in "Contribucion", with: @pyh_centro.contribucion
    fill_in "Fecha", with: @pyh_centro.fecha
    fill_in "Institucion", with: @pyh_centro.institucion
    fill_in "Pais", with: @pyh_centro.pais
    fill_in "Premio", with: @pyh_centro.premio
    click_on "Update Pyh centro"

    assert_text "Pyh centro was successfully updated"
    click_on "Back"
  end

  test "destroying a Pyh centro" do
    visit pyh_centros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pyh centro was successfully destroyed"
  end
end
