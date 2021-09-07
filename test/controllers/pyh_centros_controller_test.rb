require 'test_helper'

class PyhCentrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pyh_centro = pyh_centros(:one)
  end

  test "should get index" do
    get pyh_centros_url
    assert_response :success
  end

  test "should get new" do
    get new_pyh_centro_url
    assert_response :success
  end

  test "should create pyh_centro" do
    assert_difference('PyhCentro.count') do
      post pyh_centros_url, params: { pyh_centro: { contribucion: @pyh_centro.contribucion, fecha: @pyh_centro.fecha, institucion: @pyh_centro.institucion, pais: @pyh_centro.pais, premio: @pyh_centro.premio } }
    end

    assert_redirected_to pyh_centro_url(PyhCentro.last)
  end

  test "should show pyh_centro" do
    get pyh_centro_url(@pyh_centro)
    assert_response :success
  end

  test "should get edit" do
    get edit_pyh_centro_url(@pyh_centro)
    assert_response :success
  end

  test "should update pyh_centro" do
    patch pyh_centro_url(@pyh_centro), params: { pyh_centro: { contribucion: @pyh_centro.contribucion, fecha: @pyh_centro.fecha, institucion: @pyh_centro.institucion, pais: @pyh_centro.pais, premio: @pyh_centro.premio } }
    assert_redirected_to pyh_centro_url(@pyh_centro)
  end

  test "should destroy pyh_centro" do
    assert_difference('PyhCentro.count', -1) do
      delete pyh_centro_url(@pyh_centro)
    end

    assert_redirected_to pyh_centros_url
  end
end
