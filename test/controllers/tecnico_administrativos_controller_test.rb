require 'test_helper'

class TecnicoAdministrativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tecnico_administrativo = tecnico_administrativos(:one)
  end

  test "should get index" do
    get tecnico_administrativos_url
    assert_response :success
  end

  test "should get new" do
    get new_tecnico_administrativo_url
    assert_response :success
  end

  test "should create tecnico_administrativo" do
    assert_difference('TecnicoAdministrativo.count') do
      post tecnico_administrativos_url, params: { tecnico_administrativo: { categoria: @tecnico_administrativo.categoria, fecha_desvinculacion: @tecnico_administrativo.fecha_desvinculacion, fecha_ingreso: @tecnico_administrativo.fecha_ingreso, fecha_nacimiento: @tecnico_administrativo.fecha_nacimiento, genero: @tecnico_administrativo.genero, materno: @tecnico_administrativo.materno, nacionalidad: @tecnico_administrativo.nacionalidad, nombres: @tecnico_administrativo.nombres, paterno: @tecnico_administrativo.paterno, relacion_centro: @tecnico_administrativo.relacion_centro, rut_pasaporte: @tecnico_administrativo.rut_pasaporte, tipo_documento: @tecnico_administrativo.tipo_documento, tipo_financiamiento: @tecnico_administrativo.tipo_financiamiento } }
    end

    assert_redirected_to tecnico_administrativo_url(TecnicoAdministrativo.last)
  end

  test "should show tecnico_administrativo" do
    get tecnico_administrativo_url(@tecnico_administrativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tecnico_administrativo_url(@tecnico_administrativo)
    assert_response :success
  end

  test "should update tecnico_administrativo" do
    patch tecnico_administrativo_url(@tecnico_administrativo), params: { tecnico_administrativo: { categoria: @tecnico_administrativo.categoria, fecha_desvinculacion: @tecnico_administrativo.fecha_desvinculacion, fecha_ingreso: @tecnico_administrativo.fecha_ingreso, fecha_nacimiento: @tecnico_administrativo.fecha_nacimiento, genero: @tecnico_administrativo.genero, materno: @tecnico_administrativo.materno, nacionalidad: @tecnico_administrativo.nacionalidad, nombres: @tecnico_administrativo.nombres, paterno: @tecnico_administrativo.paterno, relacion_centro: @tecnico_administrativo.relacion_centro, rut_pasaporte: @tecnico_administrativo.rut_pasaporte, tipo_documento: @tecnico_administrativo.tipo_documento, tipo_financiamiento: @tecnico_administrativo.tipo_financiamiento } }
    assert_redirected_to tecnico_administrativo_url(@tecnico_administrativo)
  end

  test "should destroy tecnico_administrativo" do
    assert_difference('TecnicoAdministrativo.count', -1) do
      delete tecnico_administrativo_url(@tecnico_administrativo)
    end

    assert_redirected_to tecnico_administrativos_url
  end
end
