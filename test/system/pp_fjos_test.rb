require "application_system_test_case"

class PpFjosTest < ApplicationSystemTestCase
  setup do
    @pp_fjo = pp_fjos(:one)
  end

  test "visiting the index" do
    visit pp_fjos_url
    assert_selector "h1", text: "Pp Fjos"
  end

  test "creating a Pp fjo" do
    visit pp_fjos_url
    click_on "New Pp Fjo"

    fill_in "Formacion joven", with: @pp_fjo.formacion_joven_id
    fill_in "Producto pme", with: @pp_fjo.producto_pme_id
    click_on "Create Pp fjo"

    assert_text "Pp fjo was successfully created"
    click_on "Back"
  end

  test "updating a Pp fjo" do
    visit pp_fjos_url
    click_on "Edit", match: :first

    fill_in "Formacion joven", with: @pp_fjo.formacion_joven_id
    fill_in "Producto pme", with: @pp_fjo.producto_pme_id
    click_on "Update Pp fjo"

    assert_text "Pp fjo was successfully updated"
    click_on "Back"
  end

  test "destroying a Pp fjo" do
    visit pp_fjos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pp fjo was successfully destroyed"
  end
end
