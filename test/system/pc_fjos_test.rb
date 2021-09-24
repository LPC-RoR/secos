require "application_system_test_case"

class PcFjosTest < ApplicationSystemTestCase
  setup do
    @pc_fjo = pc_fjos(:one)
  end

  test "visiting the index" do
    visit pc_fjos_url
    assert_selector "h1", text: "Pc Fjos"
  end

  test "creating a Pc fjo" do
    visit pc_fjos_url
    click_on "New Pc Fjo"

    fill_in "Formacion joven", with: @pc_fjo.formacion_joven_id
    fill_in "Presentacion congreso", with: @pc_fjo.presentacion_congreso_id
    click_on "Create Pc fjo"

    assert_text "Pc fjo was successfully created"
    click_on "Back"
  end

  test "updating a Pc fjo" do
    visit pc_fjos_url
    click_on "Edit", match: :first

    fill_in "Formacion joven", with: @pc_fjo.formacion_joven_id
    fill_in "Presentacion congreso", with: @pc_fjo.presentacion_congreso_id
    click_on "Update Pc fjo"

    assert_text "Pc fjo was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc fjo" do
    visit pc_fjos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc fjo was successfully destroyed"
  end
end
