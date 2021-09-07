require "application_system_test_case"

class PpPosTest < ApplicationSystemTestCase
  setup do
    @pp_po = pp_pos(:one)
  end

  test "visiting the index" do
    visit pp_pos_url
    assert_selector "h1", text: "Pp Pos"
  end

  test "creating a Pp po" do
    visit pp_pos_url
    click_on "New Pp Po"

    fill_in "Producto pme", with: @pp_po.producto_pme_id
    fill_in "Publico objetivo", with: @pp_po.publico_objetivo_id
    click_on "Create Pp po"

    assert_text "Pp po was successfully created"
    click_on "Back"
  end

  test "updating a Pp po" do
    visit pp_pos_url
    click_on "Edit", match: :first

    fill_in "Producto pme", with: @pp_po.producto_pme_id
    fill_in "Publico objetivo", with: @pp_po.publico_objetivo_id
    click_on "Update Pp po"

    assert_text "Pp po was successfully updated"
    click_on "Back"
  end

  test "destroying a Pp po" do
    visit pp_pos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pp po was successfully destroyed"
  end
end
