require 'test_helper'

class AePosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ae_po = ae_pos(:one)
  end

  test "should get index" do
    get ae_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_ae_po_url
    assert_response :success
  end

  test "should create ae_po" do
    assert_difference('AePo.count') do
      post ae_pos_url, params: { ae_po: { articulo_entrevista_id: @ae_po.articulo_entrevista_id, publico_objetivo: @ae_po.publico_objetivo } }
    end

    assert_redirected_to ae_po_url(AePo.last)
  end

  test "should show ae_po" do
    get ae_po_url(@ae_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_ae_po_url(@ae_po)
    assert_response :success
  end

  test "should update ae_po" do
    patch ae_po_url(@ae_po), params: { ae_po: { articulo_entrevista_id: @ae_po.articulo_entrevista_id, publico_objetivo: @ae_po.publico_objetivo } }
    assert_redirected_to ae_po_url(@ae_po)
  end

  test "should destroy ae_po" do
    assert_difference('AePo.count', -1) do
      delete ae_po_url(@ae_po)
    end

    assert_redirected_to ae_pos_url
  end
end
