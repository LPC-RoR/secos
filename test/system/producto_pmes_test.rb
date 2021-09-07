require "application_system_test_case"

class ProductoPmesTest < ApplicationSystemTestCase
  setup do
    @producto_pme = producto_pmes(:one)
  end

  test "visiting the index" do
    visit producto_pmes_url
    assert_selector "h1", text: "Producto Pmes"
  end

  test "creating a Producto pme" do
    visit producto_pmes_url
    click_on "New Producto Pme"

    fill_in "Alcance", with: @producto_pme.alcance
    fill_in "Fecha", with: @producto_pme.fecha
    fill_in "Objetivo", with: @producto_pme.objetivo
    fill_in "Otro tipo producto", with: @producto_pme.otro_tipo_producto
    fill_in "Producto", with: @producto_pme.producto
    fill_in "Tipo producto", with: @producto_pme.tipo_producto
    click_on "Create Producto pme"

    assert_text "Producto pme was successfully created"
    click_on "Back"
  end

  test "updating a Producto pme" do
    visit producto_pmes_url
    click_on "Edit", match: :first

    fill_in "Alcance", with: @producto_pme.alcance
    fill_in "Fecha", with: @producto_pme.fecha
    fill_in "Objetivo", with: @producto_pme.objetivo
    fill_in "Otro tipo producto", with: @producto_pme.otro_tipo_producto
    fill_in "Producto", with: @producto_pme.producto
    fill_in "Tipo producto", with: @producto_pme.tipo_producto
    click_on "Update Producto pme"

    assert_text "Producto pme was successfully updated"
    click_on "Back"
  end

  test "destroying a Producto pme" do
    visit producto_pmes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Producto pme was successfully destroyed"
  end
end
