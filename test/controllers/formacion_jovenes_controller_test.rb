require 'test_helper'

class FormacionJovenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formacion_joven = formacion_jovenes(:one)
  end

  test "should get index" do
    get formacion_jovenes_url
    assert_response :success
  end

  test "should get new" do
    get new_formacion_joven_url
    assert_response :success
  end

  test "should create formacion_joven" do
    assert_difference('FormacionJoven.count') do
      post formacion_jovenes_url, params: { formacion_joven: { email: @formacion_joven.email, estado: @formacion_joven.estado, fecha_desvinculacion: @formacion_joven.fecha_desvinculacion, fecha_ingreso_centro: @formacion_joven.fecha_ingreso_centro, fecha_nacimiento: @formacion_joven.fecha_nacimiento, genero: @formacion_joven.genero, materno: @formacion_joven.materno, monto: @formacion_joven.monto, nacionalidad: @formacion_joven.nacionalidad, nombres: @formacion_joven.nombres, otra_universidad_formacion: @formacion_joven.otra_universidad_formacion, pais_universidad_origen: @formacion_joven.pais_universidad_origen, paterno: @formacion_joven.paterno, profesion_titulo_grado: @formacion_joven.profesion_titulo_grado, region_universidad_formacion: @formacion_joven.region_universidad_formacion, relacion_centro: @formacion_joven.relacion_centro, rut_pasaporte: @formacion_joven.rut_pasaporte, tipo_documento: @formacion_joven.tipo_documento, tipo_financiamiento: @formacion_joven.tipo_financiamiento, universidad_formacion: @formacion_joven.universidad_formacion, universidad_origen: @formacion_joven.universidad_origen } }
    end

    assert_redirected_to formacion_joven_url(FormacionJoven.last)
  end

  test "should show formacion_joven" do
    get formacion_joven_url(@formacion_joven)
    assert_response :success
  end

  test "should get edit" do
    get edit_formacion_joven_url(@formacion_joven)
    assert_response :success
  end

  test "should update formacion_joven" do
    patch formacion_joven_url(@formacion_joven), params: { formacion_joven: { email: @formacion_joven.email, estado: @formacion_joven.estado, fecha_desvinculacion: @formacion_joven.fecha_desvinculacion, fecha_ingreso_centro: @formacion_joven.fecha_ingreso_centro, fecha_nacimiento: @formacion_joven.fecha_nacimiento, genero: @formacion_joven.genero, materno: @formacion_joven.materno, monto: @formacion_joven.monto, nacionalidad: @formacion_joven.nacionalidad, nombres: @formacion_joven.nombres, otra_universidad_formacion: @formacion_joven.otra_universidad_formacion, pais_universidad_origen: @formacion_joven.pais_universidad_origen, paterno: @formacion_joven.paterno, profesion_titulo_grado: @formacion_joven.profesion_titulo_grado, region_universidad_formacion: @formacion_joven.region_universidad_formacion, relacion_centro: @formacion_joven.relacion_centro, rut_pasaporte: @formacion_joven.rut_pasaporte, tipo_documento: @formacion_joven.tipo_documento, tipo_financiamiento: @formacion_joven.tipo_financiamiento, universidad_formacion: @formacion_joven.universidad_formacion, universidad_origen: @formacion_joven.universidad_origen } }
    assert_redirected_to formacion_joven_url(@formacion_joven)
  end

  test "should destroy formacion_joven" do
    assert_difference('FormacionJoven.count', -1) do
      delete formacion_joven_url(@formacion_joven)
    end

    assert_redirected_to formacion_jovenes_url
  end
end
