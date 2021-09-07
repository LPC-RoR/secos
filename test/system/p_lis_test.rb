require "application_system_test_case"

class PLisTest < ApplicationSystemTestCase
  setup do
    @p_li = p_lis(:one)
  end

  test "visiting the index" do
    visit p_lis_url
    assert_selector "h1", text: "P Lis"
  end

  test "creating a P li" do
    visit p_lis_url
    click_on "New P Li"

    fill_in "Linea investigacion", with: @p_li.linea_investigacion_id
    fill_in "Publicacion", with: @p_li.publicacion_id
    click_on "Create P li"

    assert_text "P li was successfully created"
    click_on "Back"
  end

  test "updating a P li" do
    visit p_lis_url
    click_on "Edit", match: :first

    fill_in "Linea investigacion", with: @p_li.linea_investigacion_id
    fill_in "Publicacion", with: @p_li.publicacion_id
    click_on "Update P li"

    assert_text "P li was successfully updated"
    click_on "Back"
  end

  test "destroying a P li" do
    visit p_lis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "P li was successfully destroyed"
  end
end
