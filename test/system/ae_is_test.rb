require "application_system_test_case"

class AeIsTest < ApplicationSystemTestCase
  setup do
    @ae_i = ae_is(:one)
  end

  test "visiting the index" do
    visit ae_is_url
    assert_selector "h1", text: "Ae Is"
  end

  test "creating a Ae i" do
    visit ae_is_url
    click_on "New Ae I"

    fill_in "Articulo entrevista", with: @ae_i.articulo_entrevista_id
    fill_in "Investigador", with: @ae_i.investigador_id
    click_on "Create Ae i"

    assert_text "Ae i was successfully created"
    click_on "Back"
  end

  test "updating a Ae i" do
    visit ae_is_url
    click_on "Edit", match: :first

    fill_in "Articulo entrevista", with: @ae_i.articulo_entrevista_id
    fill_in "Investigador", with: @ae_i.investigador_id
    click_on "Update Ae i"

    assert_text "Ae i was successfully updated"
    click_on "Back"
  end

  test "destroying a Ae i" do
    visit ae_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ae i was successfully destroyed"
  end
end
