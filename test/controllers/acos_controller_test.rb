require 'test_helper'

class AcosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aco = acos(:one)
  end

  test "should get index" do
    get acos_url
    assert_response :success
  end

  test "should get new" do
    get new_aco_url
    assert_response :success
  end

  test "should create aco" do
    assert_difference('Aco.count') do
      post acos_url, params: { aco: { alcance: @aco.alcance, ciudad: @aco.ciudad, duracion_dias: @aco.duracion_dias, fecha_inicio: @aco.fecha_inicio, fecha_termino: @aco.fecha_termino, investigador_responsable: @aco.investigador_responsable, n_asistentes: @aco.n_asistentes, n_expositores_extranjeros: @aco.n_expositores_extranjeros, n_expositores_milenio: @aco.n_expositores_milenio, n_expositores_nacionales: @aco.n_expositores_nacionales, otro_tipo_evento: @aco.otro_tipo_evento, pais: @aco.pais, tipo_evento: @aco.tipo_evento, titulo_evento: @aco.titulo_evento } }
    end

    assert_redirected_to aco_url(Aco.last)
  end

  test "should show aco" do
    get aco_url(@aco)
    assert_response :success
  end

  test "should get edit" do
    get edit_aco_url(@aco)
    assert_response :success
  end

  test "should update aco" do
    patch aco_url(@aco), params: { aco: { alcance: @aco.alcance, ciudad: @aco.ciudad, duracion_dias: @aco.duracion_dias, fecha_inicio: @aco.fecha_inicio, fecha_termino: @aco.fecha_termino, investigador_responsable: @aco.investigador_responsable, n_asistentes: @aco.n_asistentes, n_expositores_extranjeros: @aco.n_expositores_extranjeros, n_expositores_milenio: @aco.n_expositores_milenio, n_expositores_nacionales: @aco.n_expositores_nacionales, otro_tipo_evento: @aco.otro_tipo_evento, pais: @aco.pais, tipo_evento: @aco.tipo_evento, titulo_evento: @aco.titulo_evento } }
    assert_redirected_to aco_url(@aco)
  end

  test "should destroy aco" do
    assert_difference('Aco.count', -1) do
      delete aco_url(@aco)
    end

    assert_redirected_to acos_url
  end
end
