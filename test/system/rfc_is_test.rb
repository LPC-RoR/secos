require "application_system_test_case"

class RfcIsTest < ApplicationSystemTestCase
  setup do
    @rfc_i = rfc_is(:one)
  end

  test "visiting the index" do
    visit rfc_is_url
    assert_selector "h1", text: "Rfc Is"
  end

  test "creating a Rfc i" do
    visit rfc_is_url
    click_on "New Rfc I"

    fill_in "Investigador", with: @rfc_i.investigador
    fill_in "Rf colaboracion", with: @rfc_i.rf_colaboracion_id
    click_on "Create Rfc i"

    assert_text "Rfc i was successfully created"
    click_on "Back"
  end

  test "updating a Rfc i" do
    visit rfc_is_url
    click_on "Edit", match: :first

    fill_in "Investigador", with: @rfc_i.investigador
    fill_in "Rf colaboracion", with: @rfc_i.rf_colaboracion_id
    click_on "Update Rfc i"

    assert_text "Rfc i was successfully updated"
    click_on "Back"
  end

  test "destroying a Rfc i" do
    visit rfc_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rfc i was successfully destroyed"
  end
end
