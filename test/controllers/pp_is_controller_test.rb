require 'test_helper'

class PpIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pp_i = pp_is(:one)
  end

  test "should get index" do
    get pp_is_url
    assert_response :success
  end

  test "should get new" do
    get new_pp_i_url
    assert_response :success
  end

  test "should create pp_i" do
    assert_difference('PpI.count') do
      post pp_is_url, params: { pp_i: { investigador_id: @pp_i.investigador_id, producto_pme_id: @pp_i.producto_pme_id } }
    end

    assert_redirected_to pp_i_url(PpI.last)
  end

  test "should show pp_i" do
    get pp_i_url(@pp_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_pp_i_url(@pp_i)
    assert_response :success
  end

  test "should update pp_i" do
    patch pp_i_url(@pp_i), params: { pp_i: { investigador_id: @pp_i.investigador_id, producto_pme_id: @pp_i.producto_pme_id } }
    assert_redirected_to pp_i_url(@pp_i)
  end

  test "should destroy pp_i" do
    assert_difference('PpI.count', -1) do
      delete pp_i_url(@pp_i)
    end

    assert_redirected_to pp_is_url
  end
end
