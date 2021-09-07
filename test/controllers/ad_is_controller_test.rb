require 'test_helper'

class AdIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_i = ad_is(:one)
  end

  test "should get index" do
    get ad_is_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_i_url
    assert_response :success
  end

  test "should create ad_i" do
    assert_difference('AdI.count') do
      post ad_is_url, params: { ad_i: { actividad_difusion_id: @ad_i.actividad_difusion_id, investigador_id: @ad_i.investigador_id } }
    end

    assert_redirected_to ad_i_url(AdI.last)
  end

  test "should show ad_i" do
    get ad_i_url(@ad_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_i_url(@ad_i)
    assert_response :success
  end

  test "should update ad_i" do
    patch ad_i_url(@ad_i), params: { ad_i: { actividad_difusion_id: @ad_i.actividad_difusion_id, investigador_id: @ad_i.investigador_id } }
    assert_redirected_to ad_i_url(@ad_i)
  end

  test "should destroy ad_i" do
    assert_difference('AdI.count', -1) do
      delete ad_i_url(@ad_i)
    end

    assert_redirected_to ad_is_url
  end
end
