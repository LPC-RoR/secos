require 'test_helper'

class PublicacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publicacion = publicaciones(:one)
  end

  test "should get index" do
    get publicaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_publicacion_url
    assert_response :success
  end

  test "should create publicacion" do
    assert_difference('Publicacion.count') do
      post publicaciones_url, params: { publicacion: { autores: @publicacion.autores, categoria_publicacion: @publicacion.categoria_publicacion, cuartil: @publicacion.cuartil, documento_relacionado: @publicacion.documento_relacionado, doi: @publicacion.doi, fecha_publicacion: @publicacion.fecha_publicacion, fuente: @publicacion.fuente, issn: @publicacion.issn, ligada_red_formal: @publicacion.ligada_red_formal, n_autores_estudiantes: @publicacion.n_autores_estudiantes, n_autores_inv_asociados: @publicacion.n_autores_inv_asociados, n_autores_otros: @publicacion.n_autores_otros, numero: @publicacion.numero, otra_categoria: @publicacion.otra_categoria, pagina_inicial: @publicacion.pagina_inicial, red_formal: @publicacion.red_formal, titulo: @publicacion.titulo, volumen: @publicacion.volumen } }
    end

    assert_redirected_to publicacion_url(Publicacion.last)
  end

  test "should show publicacion" do
    get publicacion_url(@publicacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_publicacion_url(@publicacion)
    assert_response :success
  end

  test "should update publicacion" do
    patch publicacion_url(@publicacion), params: { publicacion: { autores: @publicacion.autores, categoria_publicacion: @publicacion.categoria_publicacion, cuartil: @publicacion.cuartil, documento_relacionado: @publicacion.documento_relacionado, doi: @publicacion.doi, fecha_publicacion: @publicacion.fecha_publicacion, fuente: @publicacion.fuente, issn: @publicacion.issn, ligada_red_formal: @publicacion.ligada_red_formal, n_autores_estudiantes: @publicacion.n_autores_estudiantes, n_autores_inv_asociados: @publicacion.n_autores_inv_asociados, n_autores_otros: @publicacion.n_autores_otros, numero: @publicacion.numero, otra_categoria: @publicacion.otra_categoria, pagina_inicial: @publicacion.pagina_inicial, red_formal: @publicacion.red_formal, titulo: @publicacion.titulo, volumen: @publicacion.volumen } }
    assert_redirected_to publicacion_url(@publicacion)
  end

  test "should destroy publicacion" do
    assert_difference('Publicacion.count', -1) do
      delete publicacion_url(@publicacion)
    end

    assert_redirected_to publicaciones_url
  end
end
