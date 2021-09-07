require "application_system_test_case"

class FjNforesTest < ApplicationSystemTestCase
  setup do
    @fj_nfor = fj_nfores(:one)
  end

  test "visiting the index" do
    visit fj_nfores_url
    assert_selector "h1", text: "Fj Nfores"
  end

  test "creating a Fj nfor" do
    visit fj_nfores_url
    click_on "New Fj Nfor"

    fill_in "Formacion joven", with: @fj_nfor.formacion_joven_id
    fill_in "Nivel formacion", with: @fj_nfor.nivel_formacion_id
    click_on "Create Fj nfor"

    assert_text "Fj nfor was successfully created"
    click_on "Back"
  end

  test "updating a Fj nfor" do
    visit fj_nfores_url
    click_on "Edit", match: :first

    fill_in "Formacion joven", with: @fj_nfor.formacion_joven_id
    fill_in "Nivel formacion", with: @fj_nfor.nivel_formacion_id
    click_on "Update Fj nfor"

    assert_text "Fj nfor was successfully updated"
    click_on "Back"
  end

  test "destroying a Fj nfor" do
    visit fj_nfores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fj nfor was successfully destroyed"
  end
end
