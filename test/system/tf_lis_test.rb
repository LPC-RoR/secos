require "application_system_test_case"

class TfLisTest < ApplicationSystemTestCase
  setup do
    @tf_li = tf_lis(:one)
  end

  test "visiting the index" do
    visit tf_lis_url
    assert_selector "h1", text: "Tf Lis"
  end

  test "creating a Tf li" do
    visit tf_lis_url
    click_on "New Tf Li"

    fill_in "Lineainvestigacion", with: @tf_li.LineaInvestigacion
    fill_in "Tesis finalizada", with: @tf_li.tesis_finalizada_id
    click_on "Create Tf li"

    assert_text "Tf li was successfully created"
    click_on "Back"
  end

  test "updating a Tf li" do
    visit tf_lis_url
    click_on "Edit", match: :first

    fill_in "Lineainvestigacion", with: @tf_li.LineaInvestigacion
    fill_in "Tesis finalizada", with: @tf_li.tesis_finalizada_id
    click_on "Update Tf li"

    assert_text "Tf li was successfully updated"
    click_on "Back"
  end

  test "destroying a Tf li" do
    visit tf_lis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tf li was successfully destroyed"
  end
end
