require "application_system_test_case"

class AdIsTest < ApplicationSystemTestCase
  setup do
    @ad_i = ad_is(:one)
  end

  test "visiting the index" do
    visit ad_is_url
    assert_selector "h1", text: "Ad Is"
  end

  test "creating a Ad i" do
    visit ad_is_url
    click_on "New Ad I"

    fill_in "Actividad difusion", with: @ad_i.actividad_difusion_id
    fill_in "Investigador", with: @ad_i.investigador_id
    click_on "Create Ad i"

    assert_text "Ad i was successfully created"
    click_on "Back"
  end

  test "updating a Ad i" do
    visit ad_is_url
    click_on "Edit", match: :first

    fill_in "Actividad difusion", with: @ad_i.actividad_difusion_id
    fill_in "Investigador", with: @ad_i.investigador_id
    click_on "Update Ad i"

    assert_text "Ad i was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad i" do
    visit ad_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad i was successfully destroyed"
  end
end
