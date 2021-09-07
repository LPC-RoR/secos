require "application_system_test_case"

class ILisTest < ApplicationSystemTestCase
  setup do
    @i_li = i_lis(:one)
  end

  test "visiting the index" do
    visit i_lis_url
    assert_selector "h1", text: "I Lis"
  end

  test "creating a I li" do
    visit i_lis_url
    click_on "New I Li"

    fill_in "Investigador", with: @i_li.investigador_id
    fill_in "Linea investigacion", with: @i_li.linea_investigacion_id
    click_on "Create I li"

    assert_text "I li was successfully created"
    click_on "Back"
  end

  test "updating a I li" do
    visit i_lis_url
    click_on "Edit", match: :first

    fill_in "Investigador", with: @i_li.investigador_id
    fill_in "Linea investigacion", with: @i_li.linea_investigacion_id
    click_on "Update I li"

    assert_text "I li was successfully updated"
    click_on "Back"
  end

  test "destroying a I li" do
    visit i_lis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "I li was successfully destroyed"
  end
end
