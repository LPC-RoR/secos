require 'test_helper'

class IGasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_ga = i_gas(:one)
  end

  test "should get index" do
    get i_gas_url
    assert_response :success
  end

  test "should get new" do
    get new_i_ga_url
    assert_response :success
  end

  test "should create i_ga" do
    assert_difference('IGa.count') do
      post i_gas_url, params: { i_ga: { grado_academico_id: @i_ga.grado_academico_id, investigador_id: @i_ga.investigador_id } }
    end

    assert_redirected_to i_ga_url(IGa.last)
  end

  test "should show i_ga" do
    get i_ga_url(@i_ga)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_ga_url(@i_ga)
    assert_response :success
  end

  test "should update i_ga" do
    patch i_ga_url(@i_ga), params: { i_ga: { grado_academico_id: @i_ga.grado_academico_id, investigador_id: @i_ga.investigador_id } }
    assert_redirected_to i_ga_url(@i_ga)
  end

  test "should destroy i_ga" do
    assert_difference('IGa.count', -1) do
      delete i_ga_url(@i_ga)
    end

    assert_redirected_to i_gas_url
  end
end
