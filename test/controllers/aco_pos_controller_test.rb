require 'test_helper'

class AcoPosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aco_po = aco_pos(:one)
  end

  test "should get index" do
    get aco_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_aco_po_url
    assert_response :success
  end

  test "should create aco_po" do
    assert_difference('AcoPo.count') do
      post aco_pos_url, params: { aco_po: { aco_id: @aco_po.aco_id, publico_objetivo_id: @aco_po.publico_objetivo_id } }
    end

    assert_redirected_to aco_po_url(AcoPo.last)
  end

  test "should show aco_po" do
    get aco_po_url(@aco_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_aco_po_url(@aco_po)
    assert_response :success
  end

  test "should update aco_po" do
    patch aco_po_url(@aco_po), params: { aco_po: { aco_id: @aco_po.aco_id, publico_objetivo_id: @aco_po.publico_objetivo_id } }
    assert_redirected_to aco_po_url(@aco_po)
  end

  test "should destroy aco_po" do
    assert_difference('AcoPo.count', -1) do
      delete aco_po_url(@aco_po)
    end

    assert_redirected_to aco_pos_url
  end
end
