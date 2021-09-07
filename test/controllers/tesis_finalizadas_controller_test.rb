require 'test_helper'

class TesisFinalizadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tesis_finalizada = tesis_finalizadas(:one)
  end

  test "should get index" do
    get tesis_finalizadas_url
    assert_response :success
  end

  test "should get new" do
    get new_tesis_finalizada_url
    assert_response :success
  end

  test "should create tesis_finalizada" do
    assert_difference('TesisFinalizada.count') do
      post tesis_finalizadas_url, params: { tesis_finalizada: { estudiante: @tesis_finalizada.estudiante, fecha_aprobacion: @tesis_finalizada.fecha_aprobacion, nivel_formacion: @tesis_finalizada.nivel_formacion, nombre_tesis: @tesis_finalizada.nombre_tesis } }
    end

    assert_redirected_to tesis_finalizada_url(TesisFinalizada.last)
  end

  test "should show tesis_finalizada" do
    get tesis_finalizada_url(@tesis_finalizada)
    assert_response :success
  end

  test "should get edit" do
    get edit_tesis_finalizada_url(@tesis_finalizada)
    assert_response :success
  end

  test "should update tesis_finalizada" do
    patch tesis_finalizada_url(@tesis_finalizada), params: { tesis_finalizada: { estudiante: @tesis_finalizada.estudiante, fecha_aprobacion: @tesis_finalizada.fecha_aprobacion, nivel_formacion: @tesis_finalizada.nivel_formacion, nombre_tesis: @tesis_finalizada.nombre_tesis } }
    assert_redirected_to tesis_finalizada_url(@tesis_finalizada)
  end

  test "should destroy tesis_finalizada" do
    assert_difference('TesisFinalizada.count', -1) do
      delete tesis_finalizada_url(@tesis_finalizada)
    end

    assert_redirected_to tesis_finalizadas_url
  end
end
