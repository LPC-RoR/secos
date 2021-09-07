require "application_system_test_case"

class AdPosTest < ApplicationSystemTestCase
  setup do
    @ad_po = ad_pos(:one)
  end

  test "visiting the index" do
    visit ad_pos_url
    assert_selector "h1", text: "Ad Pos"
  end

  test "creating a Ad po" do
    visit ad_pos_url
    click_on "New Ad Po"

    fill_in "Actividad difusion", with: @ad_po.actividad_difusion_id
    fill_in "Publico objetivo", with: @ad_po.publico_objetivo_id
    click_on "Create Ad po"

    assert_text "Ad po was successfully created"
    click_on "Back"
  end

  test "updating a Ad po" do
    visit ad_pos_url
    click_on "Edit", match: :first

    fill_in "Actividad difusion", with: @ad_po.actividad_difusion_id
    fill_in "Publico objetivo", with: @ad_po.publico_objetivo_id
    click_on "Update Ad po"

    assert_text "Ad po was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad po" do
    visit ad_pos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad po was successfully destroyed"
  end
end
