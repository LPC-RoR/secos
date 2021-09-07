require 'test_helper'

class ILisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_li = i_lis(:one)
  end

  test "should get index" do
    get i_lis_url
    assert_response :success
  end

  test "should get new" do
    get new_i_li_url
    assert_response :success
  end

  test "should create i_li" do
    assert_difference('ILi.count') do
      post i_lis_url, params: { i_li: { investigador_id: @i_li.investigador_id, linea_investigacion_id: @i_li.linea_investigacion_id } }
    end

    assert_redirected_to i_li_url(ILi.last)
  end

  test "should show i_li" do
    get i_li_url(@i_li)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_li_url(@i_li)
    assert_response :success
  end

  test "should update i_li" do
    patch i_li_url(@i_li), params: { i_li: { investigador_id: @i_li.investigador_id, linea_investigacion_id: @i_li.linea_investigacion_id } }
    assert_redirected_to i_li_url(@i_li)
  end

  test "should destroy i_li" do
    assert_difference('ILi.count', -1) do
      delete i_li_url(@i_li)
    end

    assert_redirected_to i_lis_url
  end
end
