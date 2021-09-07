require 'test_helper'

class RfcAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rfc_a = rfc_as(:one)
  end

  test "should get index" do
    get rfc_as_url
    assert_response :success
  end

  test "should get new" do
    get new_rfc_a_url
    assert_response :success
  end

  test "should create rfc_a" do
    assert_difference('RfcA.count') do
      post rfc_as_url, params: { rfc_a: { investigador: @rfc_a.investigador, rf_colaboracion_id: @rfc_a.rf_colaboracion_id } }
    end

    assert_redirected_to rfc_a_url(RfcA.last)
  end

  test "should show rfc_a" do
    get rfc_a_url(@rfc_a)
    assert_response :success
  end

  test "should get edit" do
    get edit_rfc_a_url(@rfc_a)
    assert_response :success
  end

  test "should update rfc_a" do
    patch rfc_a_url(@rfc_a), params: { rfc_a: { investigador: @rfc_a.investigador, rf_colaboracion_id: @rfc_a.rf_colaboracion_id } }
    assert_redirected_to rfc_a_url(@rfc_a)
  end

  test "should destroy rfc_a" do
    assert_difference('RfcA.count', -1) do
      delete rfc_a_url(@rfc_a)
    end

    assert_redirected_to rfc_as_url
  end
end
