require "application_system_test_case"

class LiDisTest < ApplicationSystemTestCase
  setup do
    @li_di = li_dis(:one)
  end

  test "visiting the index" do
    visit li_dis_url
    assert_selector "h1", text: "Li Dis"
  end

  test "creating a Li di" do
    visit li_dis_url
    click_on "New Li Di"

    fill_in "Disciplina", with: @li_di.disciplina_id
    fill_in "ĺinea investigacion", with: @li_di.ĺinea_investigacion_id
    click_on "Create Li di"

    assert_text "Li di was successfully created"
    click_on "Back"
  end

  test "updating a Li di" do
    visit li_dis_url
    click_on "Edit", match: :first

    fill_in "Disciplina", with: @li_di.disciplina_id
    fill_in "ĺinea investigacion", with: @li_di.ĺinea_investigacion_id
    click_on "Update Li di"

    assert_text "Li di was successfully updated"
    click_on "Back"
  end

  test "destroying a Li di" do
    visit li_dis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Li di was successfully destroyed"
  end
end
