require "application_system_test_case"

class PpIsTest < ApplicationSystemTestCase
  setup do
    @pp_i = pp_is(:one)
  end

  test "visiting the index" do
    visit pp_is_url
    assert_selector "h1", text: "Pp Is"
  end

  test "creating a Pp i" do
    visit pp_is_url
    click_on "New Pp I"

    fill_in "Investigador", with: @pp_i.investigador_id
    fill_in "Producto pme", with: @pp_i.producto_pme_id
    click_on "Create Pp i"

    assert_text "Pp i was successfully created"
    click_on "Back"
  end

  test "updating a Pp i" do
    visit pp_is_url
    click_on "Edit", match: :first

    fill_in "Investigador", with: @pp_i.investigador_id
    fill_in "Producto pme", with: @pp_i.producto_pme_id
    click_on "Update Pp i"

    assert_text "Pp i was successfully updated"
    click_on "Back"
  end

  test "destroying a Pp i" do
    visit pp_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pp i was successfully destroyed"
  end
end
