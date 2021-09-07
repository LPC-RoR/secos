require "application_system_test_case"

class PatPaisTest < ApplicationSystemTestCase
  setup do
    @pat_pai = pat_pais(:one)
  end

  test "visiting the index" do
    visit pat_pais_url
    assert_selector "h1", text: "Pat Pais"
  end

  test "creating a Pat pai" do
    visit pat_pais_url
    click_on "New Pat Pai"

    fill_in "Pais", with: @pat_pai.pais_id
    fill_in "Patente", with: @pat_pai.patente_id
    click_on "Create Pat pai"

    assert_text "Pat pai was successfully created"
    click_on "Back"
  end

  test "updating a Pat pai" do
    visit pat_pais_url
    click_on "Edit", match: :first

    fill_in "Pais", with: @pat_pai.pais_id
    fill_in "Patente", with: @pat_pai.patente_id
    click_on "Update Pat pai"

    assert_text "Pat pai was successfully updated"
    click_on "Back"
  end

  test "destroying a Pat pai" do
    visit pat_pais_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pat pai was successfully destroyed"
  end
end
