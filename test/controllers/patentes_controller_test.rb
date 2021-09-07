require 'test_helper'

class PatentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patente = patentes(:one)
  end

  test "should get index" do
    get patentes_url
    assert_response :success
  end

  test "should get new" do
    get new_patente_url
    assert_response :success
  end

  test "should create patente" do
    assert_difference('Patente.count') do
      post patentes_url, params: { patente: { categoria: @patente.categoria, descripcion: @patente.descripcion, estado: @patente.estado, fecha_registro: @patente.fecha_registro, fecha_solicitud: @patente.fecha_solicitud, inventor: @patente.inventor, n_registro: @patente.n_registro, n_solicitud: @patente.n_solicitud, solicitante: @patente.solicitante, titulo: @patente.titulo } }
    end

    assert_redirected_to patente_url(Patente.last)
  end

  test "should show patente" do
    get patente_url(@patente)
    assert_response :success
  end

  test "should get edit" do
    get edit_patente_url(@patente)
    assert_response :success
  end

  test "should update patente" do
    patch patente_url(@patente), params: { patente: { categoria: @patente.categoria, descripcion: @patente.descripcion, estado: @patente.estado, fecha_registro: @patente.fecha_registro, fecha_solicitud: @patente.fecha_solicitud, inventor: @patente.inventor, n_registro: @patente.n_registro, n_solicitud: @patente.n_solicitud, solicitante: @patente.solicitante, titulo: @patente.titulo } }
    assert_redirected_to patente_url(@patente)
  end

  test "should destroy patente" do
    assert_difference('Patente.count', -1) do
      delete patente_url(@patente)
    end

    assert_redirected_to patentes_url
  end
end
