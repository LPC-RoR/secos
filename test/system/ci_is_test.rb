require "application_system_test_case"

class CiIsTest < ApplicationSystemTestCase
  setup do
    @ci_i = ci_is(:one)
  end

  test "visiting the index" do
    visit ci_is_url
    assert_selector "h1", text: "Ci Is"
  end

  test "creating a Ci i" do
    visit ci_is_url
    click_on "New Ci I"

    fill_in "Comite editorial", with: @ci_i.comite_editorial_id
    fill_in "Investigador", with: @ci_i.investigador_id
    click_on "Create Ci i"

    assert_text "Ci i was successfully created"
    click_on "Back"
  end

  test "updating a Ci i" do
    visit ci_is_url
    click_on "Edit", match: :first

    fill_in "Comite editorial", with: @ci_i.comite_editorial_id
    fill_in "Investigador", with: @ci_i.investigador_id
    click_on "Update Ci i"

    assert_text "Ci i was successfully updated"
    click_on "Back"
  end

  test "destroying a Ci i" do
    visit ci_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ci i was successfully destroyed"
  end
end
