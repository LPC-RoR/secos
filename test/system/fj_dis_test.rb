require "application_system_test_case"

class FjDisTest < ApplicationSystemTestCase
  setup do
    @fj_di = fj_dis(:one)
  end

  test "visiting the index" do
    visit fj_dis_url
    assert_selector "h1", text: "Fj Dis"
  end

  test "creating a Fj di" do
    visit fj_dis_url
    click_on "New Fj Di"

    fill_in "Disciplina", with: @fj_di.disciplina_id
    fill_in "Formacion joven", with: @fj_di.formacion_joven_id
    click_on "Create Fj di"

    assert_text "Fj di was successfully created"
    click_on "Back"
  end

  test "updating a Fj di" do
    visit fj_dis_url
    click_on "Edit", match: :first

    fill_in "Disciplina", with: @fj_di.disciplina_id
    fill_in "Formacion joven", with: @fj_di.formacion_joven_id
    click_on "Update Fj di"

    assert_text "Fj di was successfully updated"
    click_on "Back"
  end

  test "destroying a Fj di" do
    visit fj_dis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fj di was successfully destroyed"
  end
end
