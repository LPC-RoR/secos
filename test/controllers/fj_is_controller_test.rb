require 'test_helper'

class FjIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fj_i = fj_is(:one)
  end

  test "should get index" do
    get fj_is_url
    assert_response :success
  end

  test "should get new" do
    get new_fj_i_url
    assert_response :success
  end

  test "should create fj_i" do
    assert_difference('FjI.count') do
      post fj_is_url, params: { fj_i: { formacion_joven_id: @fj_i.formacion_joven_id, investigador_id: @fj_i.investigador_id } }
    end

    assert_redirected_to fj_i_url(FjI.last)
  end

  test "should show fj_i" do
    get fj_i_url(@fj_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_fj_i_url(@fj_i)
    assert_response :success
  end

  test "should update fj_i" do
    patch fj_i_url(@fj_i), params: { fj_i: { formacion_joven_id: @fj_i.formacion_joven_id, investigador_id: @fj_i.investigador_id } }
    assert_redirected_to fj_i_url(@fj_i)
  end

  test "should destroy fj_i" do
    assert_difference('FjI.count', -1) do
      delete fj_i_url(@fj_i)
    end

    assert_redirected_to fj_is_url
  end
end
