require "application_system_test_case"

class RfcAsTest < ApplicationSystemTestCase
  setup do
    @rfc_a = rfc_as(:one)
  end

  test "visiting the index" do
    visit rfc_as_url
    assert_selector "h1", text: "Rfc As"
  end

  test "creating a Rfc a" do
    visit rfc_as_url
    click_on "New Rfc A"

    fill_in "Investigador", with: @rfc_a.investigador
    fill_in "Rf colaboracion", with: @rfc_a.rf_colaboracion_id
    click_on "Create Rfc a"

    assert_text "Rfc a was successfully created"
    click_on "Back"
  end

  test "updating a Rfc a" do
    visit rfc_as_url
    click_on "Edit", match: :first

    fill_in "Investigador", with: @rfc_a.investigador
    fill_in "Rf colaboracion", with: @rfc_a.rf_colaboracion_id
    click_on "Update Rfc a"

    assert_text "Rfc a was successfully updated"
    click_on "Back"
  end

  test "destroying a Rfc a" do
    visit rfc_as_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rfc a was successfully destroyed"
  end
end
