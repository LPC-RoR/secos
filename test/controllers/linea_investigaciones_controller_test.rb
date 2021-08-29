require 'test_helper'

class LineaInvestigacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linea_investigacion = linea_investigaciones(:one)
  end

  test "should get index" do
    get linea_investigaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_linea_investigacion_url
    assert_response :success
  end

  test "should create linea_investigacion" do
    assert_difference('LineaInvestigacion.count') do
      post linea_investigaciones_url, params: { linea_investigacion: { conceptos_clave: @linea_investigacion.conceptos_clave, descripcion: @linea_investigacion.descripcion, fecha_inicio: @linea_investigacion.fecha_inicio, fecha_termino: @linea_investigacion.fecha_termino, linea_investigacion: @linea_investigacion.linea_investigacion, objetivo: @linea_investigacion.objetivo, validez: @linea_investigacion.validez } }
    end

    assert_redirected_to linea_investigacion_url(LineaInvestigacion.last)
  end

  test "should show linea_investigacion" do
    get linea_investigacion_url(@linea_investigacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_linea_investigacion_url(@linea_investigacion)
    assert_response :success
  end

  test "should update linea_investigacion" do
    patch linea_investigacion_url(@linea_investigacion), params: { linea_investigacion: { conceptos_clave: @linea_investigacion.conceptos_clave, descripcion: @linea_investigacion.descripcion, fecha_inicio: @linea_investigacion.fecha_inicio, fecha_termino: @linea_investigacion.fecha_termino, linea_investigacion: @linea_investigacion.linea_investigacion, objetivo: @linea_investigacion.objetivo, validez: @linea_investigacion.validez } }
    assert_redirected_to linea_investigacion_url(@linea_investigacion)
  end

  test "should destroy linea_investigacion" do
    assert_difference('LineaInvestigacion.count', -1) do
      delete linea_investigacion_url(@linea_investigacion)
    end

    assert_redirected_to linea_investigaciones_url
  end
end
