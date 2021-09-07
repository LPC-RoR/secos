require 'test_helper'

class AdPosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_po = ad_pos(:one)
  end

  test "should get index" do
    get ad_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_po_url
    assert_response :success
  end

  test "should create ad_po" do
    assert_difference('AdPo.count') do
      post ad_pos_url, params: { ad_po: { actividad_difusion_id: @ad_po.actividad_difusion_id, publico_objetivo_id: @ad_po.publico_objetivo_id } }
    end

    assert_redirected_to ad_po_url(AdPo.last)
  end

  test "should show ad_po" do
    get ad_po_url(@ad_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_po_url(@ad_po)
    assert_response :success
  end

  test "should update ad_po" do
    patch ad_po_url(@ad_po), params: { ad_po: { actividad_difusion_id: @ad_po.actividad_difusion_id, publico_objetivo_id: @ad_po.publico_objetivo_id } }
    assert_redirected_to ad_po_url(@ad_po)
  end

  test "should destroy ad_po" do
    assert_difference('AdPo.count', -1) do
      delete ad_po_url(@ad_po)
    end

    assert_redirected_to ad_pos_url
  end
end
