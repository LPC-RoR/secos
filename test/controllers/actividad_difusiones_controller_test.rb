require 'test_helper'

class ActividadDifusionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad_difusion = actividad_difusiones(:one)
  end

  test "should get index" do
    get actividad_difusiones_url
    assert_response :success
  end

  test "should get new" do
    get new_actividad_difusion_url
    assert_response :success
  end

  test "should create actividad_difusion" do
    assert_difference('ActividadDifusion.count') do
      post actividad_difusiones_url, params: { actividad_difusion: { alcance: @actividad_difusion.alcance, asociada_concurso_milenio: @actividad_difusion.asociada_concurso_milenio, descripcion_actividad: @actividad_difusion.descripcion_actividad, duracion: @actividad_difusion.duracion, fecha: @actividad_difusion.fecha, n_asistentes_estudiantes: @actividad_difusion.n_asistentes_estudiantes, n_total_asistentes: @actividad_difusion.n_total_asistentes, organizacion: @actividad_difusion.organizacion, otro_tipo_evento: @actividad_difusion.otro_tipo_evento, pais_institucion: @actividad_difusion.pais_institucion, region_ubicacion: @actividad_difusion.region_ubicacion, responsable_actividad: @actividad_difusion.responsable_actividad, tipo_evento: @actividad_difusion.tipo_evento, titulo_evento: @actividad_difusion.titulo_evento } }
    end

    assert_redirected_to actividad_difusion_url(ActividadDifusion.last)
  end

  test "should show actividad_difusion" do
    get actividad_difusion_url(@actividad_difusion)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividad_difusion_url(@actividad_difusion)
    assert_response :success
  end

  test "should update actividad_difusion" do
    patch actividad_difusion_url(@actividad_difusion), params: { actividad_difusion: { alcance: @actividad_difusion.alcance, asociada_concurso_milenio: @actividad_difusion.asociada_concurso_milenio, descripcion_actividad: @actividad_difusion.descripcion_actividad, duracion: @actividad_difusion.duracion, fecha: @actividad_difusion.fecha, n_asistentes_estudiantes: @actividad_difusion.n_asistentes_estudiantes, n_total_asistentes: @actividad_difusion.n_total_asistentes, organizacion: @actividad_difusion.organizacion, otro_tipo_evento: @actividad_difusion.otro_tipo_evento, pais_institucion: @actividad_difusion.pais_institucion, region_ubicacion: @actividad_difusion.region_ubicacion, responsable_actividad: @actividad_difusion.responsable_actividad, tipo_evento: @actividad_difusion.tipo_evento, titulo_evento: @actividad_difusion.titulo_evento } }
    assert_redirected_to actividad_difusion_url(@actividad_difusion)
  end

  test "should destroy actividad_difusion" do
    assert_difference('ActividadDifusion.count', -1) do
      delete actividad_difusion_url(@actividad_difusion)
    end

    assert_redirected_to actividad_difusiones_url
  end
end
