require 'test_helper'

class LiDisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @li_di = li_dis(:one)
  end

  test "should get index" do
    get li_dis_url
    assert_response :success
  end

  test "should get new" do
    get new_li_di_url
    assert_response :success
  end

  test "should create li_di" do
    assert_difference('LiDi.count') do
      post li_dis_url, params: { li_di: { disciplina_id: @li_di.disciplina_id, ĺinea_investigacion_id: @li_di.ĺinea_investigacion_id } }
    end

    assert_redirected_to li_di_url(LiDi.last)
  end

  test "should show li_di" do
    get li_di_url(@li_di)
    assert_response :success
  end

  test "should get edit" do
    get edit_li_di_url(@li_di)
    assert_response :success
  end

  test "should update li_di" do
    patch li_di_url(@li_di), params: { li_di: { disciplina_id: @li_di.disciplina_id, ĺinea_investigacion_id: @li_di.ĺinea_investigacion_id } }
    assert_redirected_to li_di_url(@li_di)
  end

  test "should destroy li_di" do
    assert_difference('LiDi.count', -1) do
      delete li_di_url(@li_di)
    end

    assert_redirected_to li_dis_url
  end
end
