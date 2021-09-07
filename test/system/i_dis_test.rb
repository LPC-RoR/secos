require "application_system_test_case"

class IDisTest < ApplicationSystemTestCase
  setup do
    @i_di = i_dis(:one)
  end

  test "visiting the index" do
    visit i_dis_url
    assert_selector "h1", text: "I Dis"
  end

  test "creating a I di" do
    visit i_dis_url
    click_on "New I Di"

    fill_in "Disciplina", with: @i_di.disciplina_id
    fill_in "Investigador", with: @i_di.investigador_id
    click_on "Create I di"

    assert_text "I di was successfully created"
    click_on "Back"
  end

  test "updating a I di" do
    visit i_dis_url
    click_on "Edit", match: :first

    fill_in "Disciplina", with: @i_di.disciplina_id
    fill_in "Investigador", with: @i_di.investigador_id
    click_on "Update I di"

    assert_text "I di was successfully updated"
    click_on "Back"
  end

  test "destroying a I di" do
    visit i_dis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "I di was successfully destroyed"
  end
end
