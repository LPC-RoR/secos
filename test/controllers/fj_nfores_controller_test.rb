require 'test_helper'

class FjNforesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fj_nfor = fj_nfores(:one)
  end

  test "should get index" do
    get fj_nfores_url
    assert_response :success
  end

  test "should get new" do
    get new_fj_nfor_url
    assert_response :success
  end

  test "should create fj_nfor" do
    assert_difference('FjNfor.count') do
      post fj_nfores_url, params: { fj_nfor: { formacion_joven_id: @fj_nfor.formacion_joven_id, nivel_formacion_id: @fj_nfor.nivel_formacion_id } }
    end

    assert_redirected_to fj_nfor_url(FjNfor.last)
  end

  test "should show fj_nfor" do
    get fj_nfor_url(@fj_nfor)
    assert_response :success
  end

  test "should get edit" do
    get edit_fj_nfor_url(@fj_nfor)
    assert_response :success
  end

  test "should update fj_nfor" do
    patch fj_nfor_url(@fj_nfor), params: { fj_nfor: { formacion_joven_id: @fj_nfor.formacion_joven_id, nivel_formacion_id: @fj_nfor.nivel_formacion_id } }
    assert_redirected_to fj_nfor_url(@fj_nfor)
  end

  test "should destroy fj_nfor" do
    assert_difference('FjNfor.count', -1) do
      delete fj_nfor_url(@fj_nfor)
    end

    assert_redirected_to fj_nfores_url
  end
end
