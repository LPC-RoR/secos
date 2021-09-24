require "application_system_test_case"

class RfcFjosTest < ApplicationSystemTestCase
  setup do
    @rfc_fjo = rfc_fjos(:one)
  end

  test "visiting the index" do
    visit rfc_fjos_url
    assert_selector "h1", text: "Rfc Fjos"
  end

  test "creating a Rfc fjo" do
    visit rfc_fjos_url
    click_on "New Rfc Fjo"

    fill_in "Formacion joven", with: @rfc_fjo.formacion_joven_id
    fill_in "Rf colaboracion", with: @rfc_fjo.rf_colaboracion_id
    click_on "Create Rfc fjo"

    assert_text "Rfc fjo was successfully created"
    click_on "Back"
  end

  test "updating a Rfc fjo" do
    visit rfc_fjos_url
    click_on "Edit", match: :first

    fill_in "Formacion joven", with: @rfc_fjo.formacion_joven_id
    fill_in "Rf colaboracion", with: @rfc_fjo.rf_colaboracion_id
    click_on "Update Rfc fjo"

    assert_text "Rfc fjo was successfully updated"
    click_on "Back"
  end

  test "destroying a Rfc fjo" do
    visit rfc_fjos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rfc fjo was successfully destroyed"
  end
end
