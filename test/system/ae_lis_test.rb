require "application_system_test_case"

class AeLisTest < ApplicationSystemTestCase
  setup do
    @ae_li = ae_lis(:one)
  end

  test "visiting the index" do
    visit ae_lis_url
    assert_selector "h1", text: "Ae Lis"
  end

  test "creating a Ae li" do
    visit ae_lis_url
    click_on "New Ae Li"

    fill_in "Articulo entrevista", with: @ae_li.articulo_entrevista_id
    fill_in "Linea investigacion", with: @ae_li.linea_investigacion_id
    click_on "Create Ae li"

    assert_text "Ae li was successfully created"
    click_on "Back"
  end

  test "updating a Ae li" do
    visit ae_lis_url
    click_on "Edit", match: :first

    fill_in "Articulo entrevista", with: @ae_li.articulo_entrevista_id
    fill_in "Linea investigacion", with: @ae_li.linea_investigacion_id
    click_on "Update Ae li"

    assert_text "Ae li was successfully updated"
    click_on "Back"
  end

  test "destroying a Ae li" do
    visit ae_lis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ae li was successfully destroyed"
  end
end
