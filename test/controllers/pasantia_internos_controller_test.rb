require 'test_helper'

class PasantiaInternosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pasantia_interno = pasantia_internos(:one)
  end

  test "should get index" do
    get pasantia_internos_url
    assert_response :success
  end

  test "should get new" do
    get new_pasantia_interno_url
    assert_response :success
  end

  test "should create pasantia_interno" do
    assert_difference('PasantiaInterno.count') do
      post pasantia_internos_url, params: { pasantia_interno: { descripcion: @pasantia_interno.descripcion, estudiante: @pasantia_interno.estudiante, fecha_inicio: @pasantia_interno.fecha_inicio, fecha_termino: @pasantia_interno.fecha_termino, institucion: @pasantia_interno.institucion, pais: @pasantia_interno.pais, proyecto: @pasantia_interno.proyecto, tutor: @pasantia_interno.tutor, unidad_departamento: @pasantia_interno.unidad_departamento } }
    end

    assert_redirected_to pasantia_interno_url(PasantiaInterno.last)
  end

  test "should show pasantia_interno" do
    get pasantia_interno_url(@pasantia_interno)
    assert_response :success
  end

  test "should get edit" do
    get edit_pasantia_interno_url(@pasantia_interno)
    assert_response :success
  end

  test "should update pasantia_interno" do
    patch pasantia_interno_url(@pasantia_interno), params: { pasantia_interno: { descripcion: @pasantia_interno.descripcion, estudiante: @pasantia_interno.estudiante, fecha_inicio: @pasantia_interno.fecha_inicio, fecha_termino: @pasantia_interno.fecha_termino, institucion: @pasantia_interno.institucion, pais: @pasantia_interno.pais, proyecto: @pasantia_interno.proyecto, tutor: @pasantia_interno.tutor, unidad_departamento: @pasantia_interno.unidad_departamento } }
    assert_redirected_to pasantia_interno_url(@pasantia_interno)
  end

  test "should destroy pasantia_interno" do
    assert_difference('PasantiaInterno.count', -1) do
      delete pasantia_interno_url(@pasantia_interno)
    end

    assert_redirected_to pasantia_internos_url
  end
end
