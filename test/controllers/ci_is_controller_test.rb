require 'test_helper'

class CiIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ci_i = ci_is(:one)
  end

  test "should get index" do
    get ci_is_url
    assert_response :success
  end

  test "should get new" do
    get new_ci_i_url
    assert_response :success
  end

  test "should create ci_i" do
    assert_difference('CiI.count') do
      post ci_is_url, params: { ci_i: { comite_editorial_id: @ci_i.comite_editorial_id, investigador_id: @ci_i.investigador_id } }
    end

    assert_redirected_to ci_i_url(CiI.last)
  end

  test "should show ci_i" do
    get ci_i_url(@ci_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_ci_i_url(@ci_i)
    assert_response :success
  end

  test "should update ci_i" do
    patch ci_i_url(@ci_i), params: { ci_i: { comite_editorial_id: @ci_i.comite_editorial_id, investigador_id: @ci_i.investigador_id } }
    assert_redirected_to ci_i_url(@ci_i)
  end

  test "should destroy ci_i" do
    assert_difference('CiI.count', -1) do
      delete ci_i_url(@ci_i)
    end

    assert_redirected_to ci_is_url
  end
end
