require 'test_helper'

class FjDisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fj_di = fj_dis(:one)
  end

  test "should get index" do
    get fj_dis_url
    assert_response :success
  end

  test "should get new" do
    get new_fj_di_url
    assert_response :success
  end

  test "should create fj_di" do
    assert_difference('FjDi.count') do
      post fj_dis_url, params: { fj_di: { disciplina_id: @fj_di.disciplina_id, formacion_joven_id: @fj_di.formacion_joven_id } }
    end

    assert_redirected_to fj_di_url(FjDi.last)
  end

  test "should show fj_di" do
    get fj_di_url(@fj_di)
    assert_response :success
  end

  test "should get edit" do
    get edit_fj_di_url(@fj_di)
    assert_response :success
  end

  test "should update fj_di" do
    patch fj_di_url(@fj_di), params: { fj_di: { disciplina_id: @fj_di.disciplina_id, formacion_joven_id: @fj_di.formacion_joven_id } }
    assert_redirected_to fj_di_url(@fj_di)
  end

  test "should destroy fj_di" do
    assert_difference('FjDi.count', -1) do
      delete fj_di_url(@fj_di)
    end

    assert_redirected_to fj_dis_url
  end
end
