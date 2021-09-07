require 'test_helper'

class AeIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ae_i = ae_is(:one)
  end

  test "should get index" do
    get ae_is_url
    assert_response :success
  end

  test "should get new" do
    get new_ae_i_url
    assert_response :success
  end

  test "should create ae_i" do
    assert_difference('AeI.count') do
      post ae_is_url, params: { ae_i: { articulo_entrevista_id: @ae_i.articulo_entrevista_id, investigador_id: @ae_i.investigador_id } }
    end

    assert_redirected_to ae_i_url(AeI.last)
  end

  test "should show ae_i" do
    get ae_i_url(@ae_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_ae_i_url(@ae_i)
    assert_response :success
  end

  test "should update ae_i" do
    patch ae_i_url(@ae_i), params: { ae_i: { articulo_entrevista_id: @ae_i.articulo_entrevista_id, investigador_id: @ae_i.investigador_id } }
    assert_redirected_to ae_i_url(@ae_i)
  end

  test "should destroy ae_i" do
    assert_difference('AeI.count', -1) do
      delete ae_i_url(@ae_i)
    end

    assert_redirected_to ae_is_url
  end
end
