require 'test_helper'

class RColaboracionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_colaboracion = r_colaboraciones(:one)
  end

  test "should get index" do
    get r_colaboraciones_url
    assert_response :success
  end

  test "should get new" do
    get new_r_colaboracion_url
    assert_response :success
  end

  test "should create r_colaboracion" do
    assert_difference('RColaboracion.count') do
      post r_colaboraciones_url, params: { r_colaboracion: { descripcion: @r_colaboracion.descripcion, institucion_co_participante: @r_colaboracion.institucion_co_participante, n_investigadores_externos: @r_colaboracion.n_investigadores_externos, n_investigadores_milenio: @r_colaboracion.n_investigadores_milenio, n_postdoc_alumnos_externos: @r_colaboracion.n_postdoc_alumnos_externos, n_postdoc_alumnos_milenio: @r_colaboracion.n_postdoc_alumnos_milenio, n_productos: @r_colaboracion.n_productos, nombre_red: @r_colaboracion.nombre_red, objetivo: @r_colaboracion.objetivo, tipo_productos: @r_colaboracion.tipo_productos } }
    end

    assert_redirected_to r_colaboracion_url(RColaboracion.last)
  end

  test "should show r_colaboracion" do
    get r_colaboracion_url(@r_colaboracion)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_colaboracion_url(@r_colaboracion)
    assert_response :success
  end

  test "should update r_colaboracion" do
    patch r_colaboracion_url(@r_colaboracion), params: { r_colaboracion: { descripcion: @r_colaboracion.descripcion, institucion_co_participante: @r_colaboracion.institucion_co_participante, n_investigadores_externos: @r_colaboracion.n_investigadores_externos, n_investigadores_milenio: @r_colaboracion.n_investigadores_milenio, n_postdoc_alumnos_externos: @r_colaboracion.n_postdoc_alumnos_externos, n_postdoc_alumnos_milenio: @r_colaboracion.n_postdoc_alumnos_milenio, n_productos: @r_colaboracion.n_productos, nombre_red: @r_colaboracion.nombre_red, objetivo: @r_colaboracion.objetivo, tipo_productos: @r_colaboracion.tipo_productos } }
    assert_redirected_to r_colaboracion_url(@r_colaboracion)
  end

  test "should destroy r_colaboracion" do
    assert_difference('RColaboracion.count', -1) do
      delete r_colaboracion_url(@r_colaboracion)
    end

    assert_redirected_to r_colaboraciones_url
  end
end
