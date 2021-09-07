require "application_system_test_case"

class FjIsTest < ApplicationSystemTestCase
  setup do
    @fj_i = fj_is(:one)
  end

  test "visiting the index" do
    visit fj_is_url
    assert_selector "h1", text: "Fj Is"
  end

  test "creating a Fj i" do
    visit fj_is_url
    click_on "New Fj I"

    fill_in "Formacion joven", with: @fj_i.formacion_joven_id
    fill_in "Investigador", with: @fj_i.investigador_id
    click_on "Create Fj i"

    assert_text "Fj i was successfully created"
    click_on "Back"
  end

  test "updating a Fj i" do
    visit fj_is_url
    click_on "Edit", match: :first

    fill_in "Formacion joven", with: @fj_i.formacion_joven_id
    fill_in "Investigador", with: @fj_i.investigador_id
    click_on "Update Fj i"

    assert_text "Fj i was successfully updated"
    click_on "Back"
  end

  test "destroying a Fj i" do
    visit fj_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fj i was successfully destroyed"
  end
end
