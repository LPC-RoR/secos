require 'test_helper'

class PyhInvestigadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pyh_investigador = pyh_investigadores(:one)
  end

  test "should get index" do
    get pyh_investigadores_url
    assert_response :success
  end

  test "should get new" do
    get new_pyh_investigador_url
    assert_response :success
  end

  test "should create pyh_investigador" do
    assert_difference('PyhInvestigador.count') do
      post pyh_investigadores_url, params: { pyh_investigador: { contribucion: @pyh_investigador.contribucion, fecha: @pyh_investigador.fecha, institucion: @pyh_investigador.institucion, investigador: @pyh_investigador.investigador, pais: @pyh_investigador.pais, premio: @pyh_investigador.premio } }
    end

    assert_redirected_to pyh_investigador_url(PyhInvestigador.last)
  end

  test "should show pyh_investigador" do
    get pyh_investigador_url(@pyh_investigador)
    assert_response :success
  end

  test "should get edit" do
    get edit_pyh_investigador_url(@pyh_investigador)
    assert_response :success
  end

  test "should update pyh_investigador" do
    patch pyh_investigador_url(@pyh_investigador), params: { pyh_investigador: { contribucion: @pyh_investigador.contribucion, fecha: @pyh_investigador.fecha, institucion: @pyh_investigador.institucion, investigador: @pyh_investigador.investigador, pais: @pyh_investigador.pais, premio: @pyh_investigador.premio } }
    assert_redirected_to pyh_investigador_url(@pyh_investigador)
  end

  test "should destroy pyh_investigador" do
    assert_difference('PyhInvestigador.count', -1) do
      delete pyh_investigador_url(@pyh_investigador)
    end

    assert_redirected_to pyh_investigadores_url
  end
end
