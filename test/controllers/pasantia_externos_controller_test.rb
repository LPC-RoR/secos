require 'test_helper'

class PasantiaExternosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pasantia_externo = pasantia_externos(:one)
  end

  test "should get index" do
    get pasantia_externos_url
    assert_response :success
  end

  test "should get new" do
    get new_pasantia_externo_url
    assert_response :success
  end

  test "should create pasantia_externo" do
    assert_difference('PasantiaExterno.count') do
      post pasantia_externos_url, params: { pasantia_externo: { descripcion_pasantia: @pasantia_externo.descripcion_pasantia, fecha_inicio: @pasantia_externo.fecha_inicio, fecha_termino: @pasantia_externo.fecha_termino, grado_academico: @pasantia_externo.grado_academico, institucion_pasantia: @pasantia_externo.institucion_pasantia, institucion_procedencia: @pasantia_externo.institucion_procedencia, materno: @pasantia_externo.materno, nombres: @pasantia_externo.nombres, pais: @pasantia_externo.pais, paterno: @pasantia_externo.paterno, region: @pasantia_externo.region, tipo_pasante: @pasantia_externo.tipo_pasante } }
    end

    assert_redirected_to pasantia_externo_url(PasantiaExterno.last)
  end

  test "should show pasantia_externo" do
    get pasantia_externo_url(@pasantia_externo)
    assert_response :success
  end

  test "should get edit" do
    get edit_pasantia_externo_url(@pasantia_externo)
    assert_response :success
  end

  test "should update pasantia_externo" do
    patch pasantia_externo_url(@pasantia_externo), params: { pasantia_externo: { descripcion_pasantia: @pasantia_externo.descripcion_pasantia, fecha_inicio: @pasantia_externo.fecha_inicio, fecha_termino: @pasantia_externo.fecha_termino, grado_academico: @pasantia_externo.grado_academico, institucion_pasantia: @pasantia_externo.institucion_pasantia, institucion_procedencia: @pasantia_externo.institucion_procedencia, materno: @pasantia_externo.materno, nombres: @pasantia_externo.nombres, pais: @pasantia_externo.pais, paterno: @pasantia_externo.paterno, region: @pasantia_externo.region, tipo_pasante: @pasantia_externo.tipo_pasante } }
    assert_redirected_to pasantia_externo_url(@pasantia_externo)
  end

  test "should destroy pasantia_externo" do
    assert_difference('PasantiaExterno.count', -1) do
      delete pasantia_externo_url(@pasantia_externo)
    end

    assert_redirected_to pasantia_externos_url
  end
end
