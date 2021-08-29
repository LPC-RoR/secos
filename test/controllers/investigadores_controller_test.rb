require 'test_helper'

class InvestigadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investigador = investigadores(:one)
  end

  test "should get index" do
    get investigadores_url
    assert_response :success
  end

  test "should get new" do
    get new_investigador_url
    assert_response :success
  end

  test "should create investigador" do
    assert_difference('Investigador.count') do
      post investigadores_url, params: { investigador: { cargo: @investigador.cargo, celular: @investigador.celular, direccion_correspondencia: @investigador.direccion_correspondencia, email: @investigador.email, fecha_inicio: @investigador.fecha_inicio, fecha_nacimiento: @investigador.fecha_nacimiento, fecha_termino: @investigador.fecha_termino, fuente_financiamiento: @investigador.fuente_financiamiento, institucion: @investigador.institucion, materno: @investigador.materno, nacionalidad_id: @investigador.nacionalidad_id, nombres: @investigador.nombres, otra_profesion: @investigador.otra_profesion, paterno: @investigador.paterno, profesion_id: @investigador.profesion_id, region_id: @investigador.region_id, relacion_centro: @investigador.relacion_centro, rut_pasaporte: @investigador.rut_pasaporte, telefono_1: @investigador.telefono_1, telefono_2: @investigador.telefono_2, tipo_documento: @investigador.tipo_documento, vigencia: @investigador.vigencia } }
    end

    assert_redirected_to investigador_url(Investigador.last)
  end

  test "should show investigador" do
    get investigador_url(@investigador)
    assert_response :success
  end

  test "should get edit" do
    get edit_investigador_url(@investigador)
    assert_response :success
  end

  test "should update investigador" do
    patch investigador_url(@investigador), params: { investigador: { cargo: @investigador.cargo, celular: @investigador.celular, direccion_correspondencia: @investigador.direccion_correspondencia, email: @investigador.email, fecha_inicio: @investigador.fecha_inicio, fecha_nacimiento: @investigador.fecha_nacimiento, fecha_termino: @investigador.fecha_termino, fuente_financiamiento: @investigador.fuente_financiamiento, institucion: @investigador.institucion, materno: @investigador.materno, nacionalidad_id: @investigador.nacionalidad_id, nombres: @investigador.nombres, otra_profesion: @investigador.otra_profesion, paterno: @investigador.paterno, profesion_id: @investigador.profesion_id, region_id: @investigador.region_id, relacion_centro: @investigador.relacion_centro, rut_pasaporte: @investigador.rut_pasaporte, telefono_1: @investigador.telefono_1, telefono_2: @investigador.telefono_2, tipo_documento: @investigador.tipo_documento, vigencia: @investigador.vigencia } }
    assert_redirected_to investigador_url(@investigador)
  end

  test "should destroy investigador" do
    assert_difference('Investigador.count', -1) do
      delete investigador_url(@investigador)
    end

    assert_redirected_to investigadores_url
  end
end
