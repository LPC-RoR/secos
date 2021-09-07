require 'test_helper'

class RfColaboracionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rf_colaboracion = rf_colaboraciones(:one)
  end

  test "should get index" do
    get rf_colaboraciones_url
    assert_response :success
  end

  test "should get new" do
    get new_rf_colaboracion_url
    assert_response :success
  end

  test "should create rf_colaboracion" do
    assert_difference('RfColaboracion.count') do
      post rf_colaboraciones_url, params: { rf_colaboracion: { alcance: @rf_colaboracion.alcance, descripcion: @rf_colaboracion.descripcion, fecha_inicio: @rf_colaboracion.fecha_inicio, fecha_termino: @rf_colaboracion.fecha_termino, instituciones: @rf_colaboracion.instituciones, n_investigadores_externos: @rf_colaboracion.n_investigadores_externos, n_investigadores_milenio: @rf_colaboracion.n_investigadores_milenio, n_postdoc_estudiantes_externos: @rf_colaboracion.n_postdoc_estudiantes_externos, n_postdoc_estudiantes_milenio: @rf_colaboracion.n_postdoc_estudiantes_milenio, nombre_red: @rf_colaboracion.nombre_red, objetivo: @rf_colaboracion.objetivo, sitio_web: @rf_colaboracion.sitio_web } }
    end

    assert_redirected_to rf_colaboracion_url(RfColaboracion.last)
  end

  test "should show rf_colaboracion" do
    get rf_colaboracion_url(@rf_colaboracion)
    assert_response :success
  end

  test "should get edit" do
    get edit_rf_colaboracion_url(@rf_colaboracion)
    assert_response :success
  end

  test "should update rf_colaboracion" do
    patch rf_colaboracion_url(@rf_colaboracion), params: { rf_colaboracion: { alcance: @rf_colaboracion.alcance, descripcion: @rf_colaboracion.descripcion, fecha_inicio: @rf_colaboracion.fecha_inicio, fecha_termino: @rf_colaboracion.fecha_termino, instituciones: @rf_colaboracion.instituciones, n_investigadores_externos: @rf_colaboracion.n_investigadores_externos, n_investigadores_milenio: @rf_colaboracion.n_investigadores_milenio, n_postdoc_estudiantes_externos: @rf_colaboracion.n_postdoc_estudiantes_externos, n_postdoc_estudiantes_milenio: @rf_colaboracion.n_postdoc_estudiantes_milenio, nombre_red: @rf_colaboracion.nombre_red, objetivo: @rf_colaboracion.objetivo, sitio_web: @rf_colaboracion.sitio_web } }
    assert_redirected_to rf_colaboracion_url(@rf_colaboracion)
  end

  test "should destroy rf_colaboracion" do
    assert_difference('RfColaboracion.count', -1) do
      delete rf_colaboracion_url(@rf_colaboracion)
    end

    assert_redirected_to rf_colaboraciones_url
  end
end
