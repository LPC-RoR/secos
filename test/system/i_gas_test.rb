require "application_system_test_case"

class IGasTest < ApplicationSystemTestCase
  setup do
    @i_ga = i_gas(:one)
  end

  test "visiting the index" do
    visit i_gas_url
    assert_selector "h1", text: "I Gas"
  end

  test "creating a I ga" do
    visit i_gas_url
    click_on "New I Ga"

    fill_in "Grado academico", with: @i_ga.grado_academico_id
    fill_in "Investigador", with: @i_ga.investigador_id
    click_on "Create I ga"

    assert_text "I ga was successfully created"
    click_on "Back"
  end

  test "updating a I ga" do
    visit i_gas_url
    click_on "Edit", match: :first

    fill_in "Grado academico", with: @i_ga.grado_academico_id
    fill_in "Investigador", with: @i_ga.investigador_id
    click_on "Update I ga"

    assert_text "I ga was successfully updated"
    click_on "Back"
  end

  test "destroying a I ga" do
    visit i_gas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "I ga was successfully destroyed"
  end
end
