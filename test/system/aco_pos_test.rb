require "application_system_test_case"

class AcoPosTest < ApplicationSystemTestCase
  setup do
    @aco_po = aco_pos(:one)
  end

  test "visiting the index" do
    visit aco_pos_url
    assert_selector "h1", text: "Aco Pos"
  end

  test "creating a Aco po" do
    visit aco_pos_url
    click_on "New Aco Po"

    fill_in "Aco", with: @aco_po.aco_id
    fill_in "Publico objetivo", with: @aco_po.publico_objetivo_id
    click_on "Create Aco po"

    assert_text "Aco po was successfully created"
    click_on "Back"
  end

  test "updating a Aco po" do
    visit aco_pos_url
    click_on "Edit", match: :first

    fill_in "Aco", with: @aco_po.aco_id
    fill_in "Publico objetivo", with: @aco_po.publico_objetivo_id
    click_on "Update Aco po"

    assert_text "Aco po was successfully updated"
    click_on "Back"
  end

  test "destroying a Aco po" do
    visit aco_pos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aco po was successfully destroyed"
  end
end
