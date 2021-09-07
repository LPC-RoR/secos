require 'test_helper'

class RcIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rc_i = rc_is(:one)
  end

  test "should get index" do
    get rc_is_url
    assert_response :success
  end

  test "should get new" do
    get new_rc_i_url
    assert_response :success
  end

  test "should create rc_i" do
    assert_difference('RcI.count') do
      post rc_is_url, params: { rc_i: { investigador_id: @rc_i.investigador_id, r_colaboracion_id: @rc_i.r_colaboracion_id } }
    end

    assert_redirected_to rc_i_url(RcI.last)
  end

  test "should show rc_i" do
    get rc_i_url(@rc_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_rc_i_url(@rc_i)
    assert_response :success
  end

  test "should update rc_i" do
    patch rc_i_url(@rc_i), params: { rc_i: { investigador_id: @rc_i.investigador_id, r_colaboracion_id: @rc_i.r_colaboracion_id } }
    assert_redirected_to rc_i_url(@rc_i)
  end

  test "should destroy rc_i" do
    assert_difference('RcI.count', -1) do
      delete rc_i_url(@rc_i)
    end

    assert_redirected_to rc_is_url
  end
end
