require 'test_helper'

class RfcIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rfc_i = rfc_is(:one)
  end

  test "should get index" do
    get rfc_is_url
    assert_response :success
  end

  test "should get new" do
    get new_rfc_i_url
    assert_response :success
  end

  test "should create rfc_i" do
    assert_difference('RfcI.count') do
      post rfc_is_url, params: { rfc_i: { investigador: @rfc_i.investigador, rf_colaboracion_id: @rfc_i.rf_colaboracion_id } }
    end

    assert_redirected_to rfc_i_url(RfcI.last)
  end

  test "should show rfc_i" do
    get rfc_i_url(@rfc_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_rfc_i_url(@rfc_i)
    assert_response :success
  end

  test "should update rfc_i" do
    patch rfc_i_url(@rfc_i), params: { rfc_i: { investigador: @rfc_i.investigador, rf_colaboracion_id: @rfc_i.rf_colaboracion_id } }
    assert_redirected_to rfc_i_url(@rfc_i)
  end

  test "should destroy rfc_i" do
    assert_difference('RfcI.count', -1) do
      delete rfc_i_url(@rfc_i)
    end

    assert_redirected_to rfc_is_url
  end
end
