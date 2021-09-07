require "application_system_test_case"

class ComiteEditorialesTest < ApplicationSystemTestCase
  setup do
    @comite_editorial = comite_editoriales(:one)
  end

  test "visiting the index" do
    visit comite_editoriales_url
    assert_selector "h1", text: "Comite Editoriales"
  end

  test "creating a Comite editorial" do
    visit comite_editoriales_url
    click_on "New Comite Editorial"

    fill_in "Anio inicio", with: @comite_editorial.anio_inicio
    fill_in "Anio termino", with: @comite_editorial.anio_termino
    fill_in "Categoria", with: @comite_editorial.categoria
    fill_in "Nombre publicacion", with: @comite_editorial.nombre_publicacion
    fill_in "Otra categoria", with: @comite_editorial.otra_categoria
    click_on "Create Comite editorial"

    assert_text "Comite editorial was successfully created"
    click_on "Back"
  end

  test "updating a Comite editorial" do
    visit comite_editoriales_url
    click_on "Edit", match: :first

    fill_in "Anio inicio", with: @comite_editorial.anio_inicio
    fill_in "Anio termino", with: @comite_editorial.anio_termino
    fill_in "Categoria", with: @comite_editorial.categoria
    fill_in "Nombre publicacion", with: @comite_editorial.nombre_publicacion
    fill_in "Otra categoria", with: @comite_editorial.otra_categoria
    click_on "Update Comite editorial"

    assert_text "Comite editorial was successfully updated"
    click_on "Back"
  end

  test "destroying a Comite editorial" do
    visit comite_editoriales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comite editorial was successfully destroyed"
  end
end
