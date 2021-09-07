require "application_system_test_case"

class AePosTest < ApplicationSystemTestCase
  setup do
    @ae_po = ae_pos(:one)
  end

  test "visiting the index" do
    visit ae_pos_url
    assert_selector "h1", text: "Ae Pos"
  end

  test "creating a Ae po" do
    visit ae_pos_url
    click_on "New Ae Po"

    fill_in "Articulo entrevista", with: @ae_po.articulo_entrevista_id
    fill_in "Publico objetivo", with: @ae_po.publico_objetivo
    click_on "Create Ae po"

    assert_text "Ae po was successfully created"
    click_on "Back"
  end

  test "updating a Ae po" do
    visit ae_pos_url
    click_on "Edit", match: :first

    fill_in "Articulo entrevista", with: @ae_po.articulo_entrevista_id
    fill_in "Publico objetivo", with: @ae_po.publico_objetivo
    click_on "Update Ae po"

    assert_text "Ae po was successfully updated"
    click_on "Back"
  end

  test "destroying a Ae po" do
    visit ae_pos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ae po was successfully destroyed"
  end
end
