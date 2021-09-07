require 'test_helper'

class PLisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @p_li = p_lis(:one)
  end

  test "should get index" do
    get p_lis_url
    assert_response :success
  end

  test "should get new" do
    get new_p_li_url
    assert_response :success
  end

  test "should create p_li" do
    assert_difference('PLi.count') do
      post p_lis_url, params: { p_li: { linea_investigacion_id: @p_li.linea_investigacion_id, publicacion_id: @p_li.publicacion_id } }
    end

    assert_redirected_to p_li_url(PLi.last)
  end

  test "should show p_li" do
    get p_li_url(@p_li)
    assert_response :success
  end

  test "should get edit" do
    get edit_p_li_url(@p_li)
    assert_response :success
  end

  test "should update p_li" do
    patch p_li_url(@p_li), params: { p_li: { linea_investigacion_id: @p_li.linea_investigacion_id, publicacion_id: @p_li.publicacion_id } }
    assert_redirected_to p_li_url(@p_li)
  end

  test "should destroy p_li" do
    assert_difference('PLi.count', -1) do
      delete p_li_url(@p_li)
    end

    assert_redirected_to p_lis_url
  end
end
