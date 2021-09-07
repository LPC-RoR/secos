require "application_system_test_case"

class PublicacionesTest < ApplicationSystemTestCase
  setup do
    @publicacion = publicaciones(:one)
  end

  test "visiting the index" do
    visit publicaciones_url
    assert_selector "h1", text: "Publicaciones"
  end

  test "creating a Publicacion" do
    visit publicaciones_url
    click_on "New Publicacion"

    fill_in "Autores", with: @publicacion.autores
    fill_in "Categoria publicacion", with: @publicacion.categoria_publicacion
    fill_in "Cuartil", with: @publicacion.cuartil
    fill_in "Documento relacionado", with: @publicacion.documento_relacionado
    fill_in "Doi", with: @publicacion.doi
    fill_in "Fecha publicacion", with: @publicacion.fecha_publicacion
    fill_in "Fuente", with: @publicacion.fuente
    fill_in "Issn", with: @publicacion.issn
    fill_in "Ligada red formal", with: @publicacion.ligada_red_formal
    fill_in "N autores estudiantes", with: @publicacion.n_autores_estudiantes
    fill_in "N autores inv asociados", with: @publicacion.n_autores_inv_asociados
    fill_in "N autores otros", with: @publicacion.n_autores_otros
    fill_in "Numero", with: @publicacion.numero
    fill_in "Otra categoria", with: @publicacion.otra_categoria
    fill_in "Pagina inicial", with: @publicacion.pagina_inicial
    fill_in "Red formal", with: @publicacion.red_formal
    fill_in "Titulo", with: @publicacion.titulo
    fill_in "Volumen", with: @publicacion.volumen
    click_on "Create Publicacion"

    assert_text "Publicacion was successfully created"
    click_on "Back"
  end

  test "updating a Publicacion" do
    visit publicaciones_url
    click_on "Edit", match: :first

    fill_in "Autores", with: @publicacion.autores
    fill_in "Categoria publicacion", with: @publicacion.categoria_publicacion
    fill_in "Cuartil", with: @publicacion.cuartil
    fill_in "Documento relacionado", with: @publicacion.documento_relacionado
    fill_in "Doi", with: @publicacion.doi
    fill_in "Fecha publicacion", with: @publicacion.fecha_publicacion
    fill_in "Fuente", with: @publicacion.fuente
    fill_in "Issn", with: @publicacion.issn
    fill_in "Ligada red formal", with: @publicacion.ligada_red_formal
    fill_in "N autores estudiantes", with: @publicacion.n_autores_estudiantes
    fill_in "N autores inv asociados", with: @publicacion.n_autores_inv_asociados
    fill_in "N autores otros", with: @publicacion.n_autores_otros
    fill_in "Numero", with: @publicacion.numero
    fill_in "Otra categoria", with: @publicacion.otra_categoria
    fill_in "Pagina inicial", with: @publicacion.pagina_inicial
    fill_in "Red formal", with: @publicacion.red_formal
    fill_in "Titulo", with: @publicacion.titulo
    fill_in "Volumen", with: @publicacion.volumen
    click_on "Update Publicacion"

    assert_text "Publicacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Publicacion" do
    visit publicaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publicacion was successfully destroyed"
  end
end
