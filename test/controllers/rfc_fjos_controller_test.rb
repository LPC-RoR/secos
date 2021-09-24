require 'test_helper'

class RfcFjosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rfc_fjo = rfc_fjos(:one)
  end

  test "should get index" do
    get rfc_fjos_url
    assert_response :success
  end

  test "should get new" do
    get new_rfc_fjo_url
    assert_response :success
  end

  test "should create rfc_fjo" do
    assert_difference('RfcFjo.count') do
      post rfc_fjos_url, params: { rfc_fjo: { formacion_joven_id: @rfc_fjo.formacion_joven_id, rf_colaboracion_id: @rfc_fjo.rf_colaboracion_id } }
    end

    assert_redirected_to rfc_fjo_url(RfcFjo.last)
  end

  test "should show rfc_fjo" do
    get rfc_fjo_url(@rfc_fjo)
    assert_response :success
  end

  test "should get edit" do
    get edit_rfc_fjo_url(@rfc_fjo)
    assert_response :success
  end

  test "should update rfc_fjo" do
    patch rfc_fjo_url(@rfc_fjo), params: { rfc_fjo: { formacion_joven_id: @rfc_fjo.formacion_joven_id, rf_colaboracion_id: @rfc_fjo.rf_colaboracion_id } }
    assert_redirected_to rfc_fjo_url(@rfc_fjo)
  end

  test "should destroy rfc_fjo" do
    assert_difference('RfcFjo.count', -1) do
      delete rfc_fjo_url(@rfc_fjo)
    end

    assert_redirected_to rfc_fjos_url
  end
end
