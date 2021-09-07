require 'test_helper'

class PresentacionCongresosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presentacion_congreso = presentacion_congresos(:one)
  end

  test "should get index" do
    get presentacion_congresos_url
    assert_response :success
  end

  test "should get new" do
    get new_presentacion_congreso_url
    assert_response :success
  end

  test "should create presentacion_congreso" do
    assert_difference('PresentacionCongreso.count') do
      post presentacion_congresos_url, params: { presentacion_congreso: { alcance: @presentacion_congreso.alcance, ciudad: @presentacion_congreso.ciudad, fecha: @presentacion_congreso.fecha, link_presentacion: @presentacion_congreso.link_presentacion, nombre_evento: @presentacion_congreso.nombre_evento, nombre_presentacion: @presentacion_congreso.nombre_presentacion, organizacion: @presentacion_congreso.organizacion, otro_tipo: @presentacion_congreso.otro_tipo, pais: @presentacion_congreso.pais, tipo: @presentacion_congreso.tipo } }
    end

    assert_redirected_to presentacion_congreso_url(PresentacionCongreso.last)
  end

  test "should show presentacion_congreso" do
    get presentacion_congreso_url(@presentacion_congreso)
    assert_response :success
  end

  test "should get edit" do
    get edit_presentacion_congreso_url(@presentacion_congreso)
    assert_response :success
  end

  test "should update presentacion_congreso" do
    patch presentacion_congreso_url(@presentacion_congreso), params: { presentacion_congreso: { alcance: @presentacion_congreso.alcance, ciudad: @presentacion_congreso.ciudad, fecha: @presentacion_congreso.fecha, link_presentacion: @presentacion_congreso.link_presentacion, nombre_evento: @presentacion_congreso.nombre_evento, nombre_presentacion: @presentacion_congreso.nombre_presentacion, organizacion: @presentacion_congreso.organizacion, otro_tipo: @presentacion_congreso.otro_tipo, pais: @presentacion_congreso.pais, tipo: @presentacion_congreso.tipo } }
    assert_redirected_to presentacion_congreso_url(@presentacion_congreso)
  end

  test "should destroy presentacion_congreso" do
    assert_difference('PresentacionCongreso.count', -1) do
      delete presentacion_congreso_url(@presentacion_congreso)
    end

    assert_redirected_to presentacion_congresos_url
  end
end
