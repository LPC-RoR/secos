require "application_system_test_case"

class PcIotrosTest < ApplicationSystemTestCase
  setup do
    @pc_iotro = pc_iotros(:one)
  end

  test "visiting the index" do
    visit pc_iotros_url
    assert_selector "h1", text: "Pc Iotros"
  end

  test "creating a Pc iotro" do
    visit pc_iotros_url
    click_on "New Pc Iotro"

    fill_in "Investigador", with: @pc_iotro.investigador_id
    fill_in "Presentacion congreso", with: @pc_iotro.presentacion_congreso_id
    click_on "Create Pc iotro"

    assert_text "Pc iotro was successfully created"
    click_on "Back"
  end

  test "updating a Pc iotro" do
    visit pc_iotros_url
    click_on "Edit", match: :first

    fill_in "Investigador", with: @pc_iotro.investigador_id
    fill_in "Presentacion congreso", with: @pc_iotro.presentacion_congreso_id
    click_on "Update Pc iotro"

    assert_text "Pc iotro was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc iotro" do
    visit pc_iotros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc iotro was successfully destroyed"
  end
end
