require 'test_helper'

class PcIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc_i = pc_is(:one)
  end

  test "should get index" do
    get pc_is_url
    assert_response :success
  end

  test "should get new" do
    get new_pc_i_url
    assert_response :success
  end

  test "should create pc_i" do
    assert_difference('PcI.count') do
      post pc_is_url, params: { pc_i: { investigador_id: @pc_i.investigador_id, presentacion_congreso_id: @pc_i.presentacion_congreso_id } }
    end

    assert_redirected_to pc_i_url(PcI.last)
  end

  test "should show pc_i" do
    get pc_i_url(@pc_i)
    assert_response :success
  end

  test "should get edit" do
    get edit_pc_i_url(@pc_i)
    assert_response :success
  end

  test "should update pc_i" do
    patch pc_i_url(@pc_i), params: { pc_i: { investigador_id: @pc_i.investigador_id, presentacion_congreso_id: @pc_i.presentacion_congreso_id } }
    assert_redirected_to pc_i_url(@pc_i)
  end

  test "should destroy pc_i" do
    assert_difference('PcI.count', -1) do
      delete pc_i_url(@pc_i)
    end

    assert_redirected_to pc_is_url
  end
end
