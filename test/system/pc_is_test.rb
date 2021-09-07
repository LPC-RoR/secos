require "application_system_test_case"

class PcIsTest < ApplicationSystemTestCase
  setup do
    @pc_i = pc_is(:one)
  end

  test "visiting the index" do
    visit pc_is_url
    assert_selector "h1", text: "Pc Is"
  end

  test "creating a Pc i" do
    visit pc_is_url
    click_on "New Pc I"

    fill_in "Investigador", with: @pc_i.investigador_id
    fill_in "Presentacion congreso", with: @pc_i.presentacion_congreso_id
    click_on "Create Pc i"

    assert_text "Pc i was successfully created"
    click_on "Back"
  end

  test "updating a Pc i" do
    visit pc_is_url
    click_on "Edit", match: :first

    fill_in "Investigador", with: @pc_i.investigador_id
    fill_in "Presentacion congreso", with: @pc_i.presentacion_congreso_id
    click_on "Update Pc i"

    assert_text "Pc i was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc i" do
    visit pc_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc i was successfully destroyed"
  end
end
