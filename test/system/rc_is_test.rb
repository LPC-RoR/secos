require "application_system_test_case"

class RcIsTest < ApplicationSystemTestCase
  setup do
    @rc_i = rc_is(:one)
  end

  test "visiting the index" do
    visit rc_is_url
    assert_selector "h1", text: "Rc Is"
  end

  test "creating a Rc i" do
    visit rc_is_url
    click_on "New Rc I"

    fill_in "Investigador", with: @rc_i.investigador_id
    fill_in "R colaboracion", with: @rc_i.r_colaboracion_id
    click_on "Create Rc i"

    assert_text "Rc i was successfully created"
    click_on "Back"
  end

  test "updating a Rc i" do
    visit rc_is_url
    click_on "Edit", match: :first

    fill_in "Investigador", with: @rc_i.investigador_id
    fill_in "R colaboracion", with: @rc_i.r_colaboracion_id
    click_on "Update Rc i"

    assert_text "Rc i was successfully updated"
    click_on "Back"
  end

  test "destroying a Rc i" do
    visit rc_is_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rc i was successfully destroyed"
  end
end
