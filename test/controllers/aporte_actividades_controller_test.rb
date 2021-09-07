require 'test_helper'

class AporteActividadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aporte_actividad = aporte_actividades(:one)
  end

  test "should get index" do
    get aporte_actividades_url
    assert_response :success
  end

  test "should get new" do
    get new_aporte_actividad_url
    assert_response :success
  end

  test "should create aporte_actividad" do
    assert_difference('AporteActividad.count') do
      post aporte_actividades_url, params: { aporte_actividad: { actividad_producto: @aporte_actividad.actividad_producto, colaborador: @aporte_actividad.colaborador, monto: @aporte_actividad.monto, tipo: @aporte_actividad.tipo, tipo_colaboracion: @aporte_actividad.tipo_colaboracion } }
    end

    assert_redirected_to aporte_actividad_url(AporteActividad.last)
  end

  test "should show aporte_actividad" do
    get aporte_actividad_url(@aporte_actividad)
    assert_response :success
  end

  test "should get edit" do
    get edit_aporte_actividad_url(@aporte_actividad)
    assert_response :success
  end

  test "should update aporte_actividad" do
    patch aporte_actividad_url(@aporte_actividad), params: { aporte_actividad: { actividad_producto: @aporte_actividad.actividad_producto, colaborador: @aporte_actividad.colaborador, monto: @aporte_actividad.monto, tipo: @aporte_actividad.tipo, tipo_colaboracion: @aporte_actividad.tipo_colaboracion } }
    assert_redirected_to aporte_actividad_url(@aporte_actividad)
  end

  test "should destroy aporte_actividad" do
    assert_difference('AporteActividad.count', -1) do
      delete aporte_actividad_url(@aporte_actividad)
    end

    assert_redirected_to aporte_actividades_url
  end
end
