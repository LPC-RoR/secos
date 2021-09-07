require "application_system_test_case"

class PublicoObjetivosTest < ApplicationSystemTestCase
  setup do
    @publico_objetivo = publico_objetivos(:one)
  end

  test "visiting the index" do
    visit publico_objetivos_url
    assert_selector "h1", text: "Publico Objetivos"
  end

  test "creating a Publico objetivo" do
    visit publico_objetivos_url
    click_on "New Publico Objetivo"

    fill_in "Publico objetivo", with: @publico_objetivo.publico_objetivo
    click_on "Create Publico objetivo"

    assert_text "Publico objetivo was successfully created"
    click_on "Back"
  end

  test "updating a Publico objetivo" do
    visit publico_objetivos_url
    click_on "Edit", match: :first

    fill_in "Publico objetivo", with: @publico_objetivo.publico_objetivo
    click_on "Update Publico objetivo"

    assert_text "Publico objetivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Publico objetivo" do
    visit publico_objetivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publico objetivo was successfully destroyed"
  end
end
