require 'test_helper'

class PpPosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pp_po = pp_pos(:one)
  end

  test "should get index" do
    get pp_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_pp_po_url
    assert_response :success
  end

  test "should create pp_po" do
    assert_difference('PpPo.count') do
      post pp_pos_url, params: { pp_po: { producto_pme_id: @pp_po.producto_pme_id, publico_objetivo_id: @pp_po.publico_objetivo_id } }
    end

    assert_redirected_to pp_po_url(PpPo.last)
  end

  test "should show pp_po" do
    get pp_po_url(@pp_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_pp_po_url(@pp_po)
    assert_response :success
  end

  test "should update pp_po" do
    patch pp_po_url(@pp_po), params: { pp_po: { producto_pme_id: @pp_po.producto_pme_id, publico_objetivo_id: @pp_po.publico_objetivo_id } }
    assert_redirected_to pp_po_url(@pp_po)
  end

  test "should destroy pp_po" do
    assert_difference('PpPo.count', -1) do
      delete pp_po_url(@pp_po)
    end

    assert_redirected_to pp_pos_url
  end
end
