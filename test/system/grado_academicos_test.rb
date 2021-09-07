require "application_system_test_case"

class GradoAcademicosTest < ApplicationSystemTestCase
  setup do
    @grado_academico = grado_academicos(:one)
  end

  test "visiting the index" do
    visit grado_academicos_url
    assert_selector "h1", text: "Grado Academicos"
  end

  test "creating a Grado academico" do
    visit grado_academicos_url
    click_on "New Grado Academico"

    fill_in "Grado academico", with: @grado_academico.grado_academico
    click_on "Create Grado academico"

    assert_text "Grado academico was successfully created"
    click_on "Back"
  end

  test "updating a Grado academico" do
    visit grado_academicos_url
    click_on "Edit", match: :first

    fill_in "Grado academico", with: @grado_academico.grado_academico
    click_on "Update Grado academico"

    assert_text "Grado academico was successfully updated"
    click_on "Back"
  end

  test "destroying a Grado academico" do
    visit grado_academicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grado academico was successfully destroyed"
  end
end
