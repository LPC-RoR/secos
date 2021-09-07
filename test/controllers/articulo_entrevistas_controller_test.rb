require 'test_helper'

class ArticuloEntrevistasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulo_entrevista = articulo_entrevistas(:one)
  end

  test "should get index" do
    get articulo_entrevistas_url
    assert_response :success
  end

  test "should get new" do
    get new_articulo_entrevista_url
    assert_response :success
  end

  test "should create articulo_entrevista" do
    assert_difference('ArticuloEntrevista.count') do
      post articulo_entrevistas_url, params: { articulo_entrevista: { actividad: @articulo_entrevista.actividad, adjunto: @articulo_entrevista.adjunto, alcance: @articulo_entrevista.alcance, descripcion: @articulo_entrevista.descripcion, fecha_publicacion: @articulo_entrevista.fecha_publicacion, link: @articulo_entrevista.link, nombre_medio: @articulo_entrevista.nombre_medio, seccion: @articulo_entrevista.seccion, tema: @articulo_entrevista.tema, tipo_medio: @articulo_entrevista.tipo_medio } }
    end

    assert_redirected_to articulo_entrevista_url(ArticuloEntrevista.last)
  end

  test "should show articulo_entrevista" do
    get articulo_entrevista_url(@articulo_entrevista)
    assert_response :success
  end

  test "should get edit" do
    get edit_articulo_entrevista_url(@articulo_entrevista)
    assert_response :success
  end

  test "should update articulo_entrevista" do
    patch articulo_entrevista_url(@articulo_entrevista), params: { articulo_entrevista: { actividad: @articulo_entrevista.actividad, adjunto: @articulo_entrevista.adjunto, alcance: @articulo_entrevista.alcance, descripcion: @articulo_entrevista.descripcion, fecha_publicacion: @articulo_entrevista.fecha_publicacion, link: @articulo_entrevista.link, nombre_medio: @articulo_entrevista.nombre_medio, seccion: @articulo_entrevista.seccion, tema: @articulo_entrevista.tema, tipo_medio: @articulo_entrevista.tipo_medio } }
    assert_redirected_to articulo_entrevista_url(@articulo_entrevista)
  end

  test "should destroy articulo_entrevista" do
    assert_difference('ArticuloEntrevista.count', -1) do
      delete articulo_entrevista_url(@articulo_entrevista)
    end

    assert_redirected_to articulo_entrevistas_url
  end
end
