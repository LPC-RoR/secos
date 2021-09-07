require "application_system_test_case"

class ArticuloEntrevistasTest < ApplicationSystemTestCase
  setup do
    @articulo_entrevista = articulo_entrevistas(:one)
  end

  test "visiting the index" do
    visit articulo_entrevistas_url
    assert_selector "h1", text: "Articulo Entrevistas"
  end

  test "creating a Articulo entrevista" do
    visit articulo_entrevistas_url
    click_on "New Articulo Entrevista"

    fill_in "Actividad", with: @articulo_entrevista.actividad
    fill_in "Adjunto", with: @articulo_entrevista.adjunto
    fill_in "Alcance", with: @articulo_entrevista.alcance
    fill_in "Descripcion", with: @articulo_entrevista.descripcion
    fill_in "Fecha publicacion", with: @articulo_entrevista.fecha_publicacion
    fill_in "Link", with: @articulo_entrevista.link
    fill_in "Nombre medio", with: @articulo_entrevista.nombre_medio
    fill_in "Seccion", with: @articulo_entrevista.seccion
    fill_in "Tema", with: @articulo_entrevista.tema
    fill_in "Tipo medio", with: @articulo_entrevista.tipo_medio
    click_on "Create Articulo entrevista"

    assert_text "Articulo entrevista was successfully created"
    click_on "Back"
  end

  test "updating a Articulo entrevista" do
    visit articulo_entrevistas_url
    click_on "Edit", match: :first

    fill_in "Actividad", with: @articulo_entrevista.actividad
    fill_in "Adjunto", with: @articulo_entrevista.adjunto
    fill_in "Alcance", with: @articulo_entrevista.alcance
    fill_in "Descripcion", with: @articulo_entrevista.descripcion
    fill_in "Fecha publicacion", with: @articulo_entrevista.fecha_publicacion
    fill_in "Link", with: @articulo_entrevista.link
    fill_in "Nombre medio", with: @articulo_entrevista.nombre_medio
    fill_in "Seccion", with: @articulo_entrevista.seccion
    fill_in "Tema", with: @articulo_entrevista.tema
    fill_in "Tipo medio", with: @articulo_entrevista.tipo_medio
    click_on "Update Articulo entrevista"

    assert_text "Articulo entrevista was successfully updated"
    click_on "Back"
  end

  test "destroying a Articulo entrevista" do
    visit articulo_entrevistas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articulo entrevista was successfully destroyed"
  end
end
