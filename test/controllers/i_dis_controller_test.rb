require 'test_helper'

class IDisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_di = i_dis(:one)
  end

  test "should get index" do
    get i_dis_url
    assert_response :success
  end

  test "should get new" do
    get new_i_di_url
    assert_response :success
  end

  test "should create i_di" do
    assert_difference('IDi.count') do
      post i_dis_url, params: { i_di: { disciplina_id: @i_di.disciplina_id, investigador_id: @i_di.investigador_id } }
    end

    assert_redirected_to i_di_url(IDi.last)
  end

  test "should show i_di" do
    get i_di_url(@i_di)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_di_url(@i_di)
    assert_response :success
  end

  test "should update i_di" do
    patch i_di_url(@i_di), params: { i_di: { disciplina_id: @i_di.disciplina_id, investigador_id: @i_di.investigador_id } }
    assert_redirected_to i_di_url(@i_di)
  end

  test "should destroy i_di" do
    assert_difference('IDi.count', -1) do
      delete i_di_url(@i_di)
    end

    assert_redirected_to i_dis_url
  end
end
